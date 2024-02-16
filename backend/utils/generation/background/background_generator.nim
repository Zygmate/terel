##[
  Very simply generate Nim Code for Backgrounds

  Make sure, that all properties NOT marked optional must correspond to an actual value in the CSV.
  That means, each non-optional property must have a corresponding non-empty value at the particular column-row coordinate.
  For example, `goldMod` is not an optional property.
  So, if there is a `goldMod` value in the source CSV, which equals to an empty string, this will result in a borked generation.
]##

import
  std/[
    segfaults,
    strutils,
    tables,
    strformat,
    parsecsv,
    streams
  ]

const
  debug {.booldefine.} = false
  backgroundTemplate = "background_template.txt".slurp
  translationNameRaw = {
    "Apprenticed to a Blacksmith": "ApprenticedToABlacksmith",
    "Apprenticed to a Shopkeeper": "ApprenticedToAShopkeeper",
    "Beat with an Ugly Stick": "BeatWithAnUglyStick",
    "Born Under a Sign": "BornUnderASign",
    "Child of a Hero": "ChildOfAHero",
    "Dark Sight": "DarkSight",
    "Educator": "Educator",
    "Extreme Personality": "ExtremePersonality",
    "Hyperactive": "Hyperactive",
    "Inheritance": "Inheritance",
    "Mad Doctor": "MadDoctor",
    "Miracle Operation": "MiracleOperation",
    "Nietzsche Poster Child": "NietzschePosterChild",
    "Only Child": "OnlyChild",
    "Professional Knife Tosser": "ProfessionalKnifeTosser",
    "Raised by Monks": "RaisedByMonks",
    "Raised by Snake Handlers": "RaisedBySnakeHandlers",
    "Raised in the Pits": "RaisedInThePits",
    "Ran Away with the Circus": "RanAwayWithTheCircus",
    "Sickly": "Sickly",
    "Sold Your Soul": "SoldYourSoul",
    "Special Person": "SpecialPerson",
    "Troll Offspring": "TrollOffspring",
    "Afraid of the Dark": "AfraidOfTheDark",
    "Agoraphobic": "Agoraphobic",
    "Army Training": "ArmyTraining",
    "Arsonist": "Arsonist",
    "Bandit": "Bandit",
    "Barbarian": "Barbarian",
    "Bookworm": "Bookworm",
    "Bride of Frankenstein": "BrideOfFrankenstein",
    "Bully": "Bully",
    "Charlatan's Protégé": "CharlatansProtege",
    "Clanless Dwarf": "ClanlessDwarf",
    "Dark Elf Follower": "DarkElfFollower",
    "Day Mage": "DayMage",
    "Disenfranchised Gnome": "DisenfranchisedGnome",
    "Elven Blood": "ElvenBlood",
    "Escaped Lunatic": "EscapedLunatic",
    "Factory Escapee": "FactoryEscapee",
    "Feral Child": "FeralChild",
    "Foppish Elf": "FoppishElf",
    "Frankenstein Monster": "FrankensteinMonster",
    "Freed Bodyguard": "FreedBodyguard",
    "Halfling Orphan": "HalflingOrphan",
    "Hydrophobic": "Hydrophobic",
    "Idiot Savant": "IdiotSavant",
    "Lady's Man": "LadysMan",
    "Magick Allergy": "MagickAllergy",
    "Nature Mage": "NatureMage",
    "Night Mage": "NightMage",
    "Raised By Elves": "RaisedByElves",
    "Raised By Orcs": "RaisedByOrcs",
    "Rare Half-Ogre Birth": "RareHalfOgreBirth",
    "Sent to Charm School": "SentToCharmSchool",
    "Sheltered Childhood": "ShelteredChildhood",
    "Sky Mage": "SkyMage",
    "Super Model": "SuperModel",
    "Suppressed Orcish Looks": "SuppressedOrcishLooks",
    "Technophobia": "Technophobia",
    "Tomboy": "Tomboy",
    "Tough Hide": "ToughHide",
    "Wild Half-Ogre": "WildHalfOgre"
  }
  translationKeyRaw = {
    "name": "name",
    "ST": "strength",
    "IN": "intelligence",
    "CN": "constitution",
    "WP": "willpower",
    "DX": "dexterity",
    "PE": "perception",
    "BE": "beauty",
    "CH": "charisma",
    "technical": "technical",
    "magickal": "magickal",
    "bow": "bow",
    "dodge": "dodge",
    "melee": "melee",
    "throwing": "throwing",
    "backstab": "backstab",
    "pickPocket": "pickpocket",
    "prowling": "prowling",
    "spotTrap": "spottrap",
    "gambling": "gambling",
    "haggle": "haggle",
    "heal": "heal",
    "persuasion": "persuasion",
    "techModifier": "techMod",
    "repair": "repair",
    "firearms": "firearms",
    "pickLock": "pickLock",
    "disarmTrap": "disarmtrap",
    "PhysDmgRes": "physDmgRes",
    "fatigueDmgRes": "fatigueDmgRes",
    "magickRes": "magickRes",
    "fireRes": "fireRes",
    "poisonRes": "poisonRes",
    "electricalRes": "electricalRes",
    "critSuccessChance": "critSuccessChance",
    "critFailureChance": "critFailureChance",
    "critHit": "critHit",
    "critFailure": "critFailure",
    "SpeedMod": "speedMod",
    "positiveReactionMod": "positiveReactionMod",
    "negativeReactionMod": "negativeReactionMod",
    "reactionMod": "reactionMod",
    "alignment": "alignment",
    "maxAlignment": "maxAlignment",
    "goldMod": "goldMod",
    "item 1": "item1",
    "item 2": "item2",
    "item 3": "item3",
    "extraMagickPoints": "extraMagickPoints",
    "isGenderLock": "genderLock",
    "isTechLocked": "isTechLocked",
    "exlposiveExpertiseMod": "explosiveExpertiseMod",
    "notScriptable": "extra",
    "desc": "description"
  }

let
  translationName = translationNameRaw.toTable
  translationKey = translationKeyRaw.toTable

when debug:
  import std/logging
  let logger = newConsoleLogger(flushThreshold = lvlAll)

proc run =
  let streamFileOutput = "gen_background.nim".newFileStream fmReadWrite
  var
    p: CsvParser
    temp = backgroundTemplate

  p.open "../../../../docs/game-data/background_meta.tsv", '\t'
  defer: p.close
  p.readHeaderRow

  while p.readRow():
    for col in p.headers:
      let key = try: translationKey[col] except KeyError:
        when debug: logger.log(lvlError, "KeyError at col: " & col)
        continue
      var entry = p.rowEntry(col)
      if entry == "TRUE":
        entry = "true"
      elif key == "genderLock" and entry == "FALSE":
        entry = "Any"
      elif entry == "FALSE":
        entry = "false"
      elif entry == "female":
        entry = "Female"
      elif entry == "male":
        entry = "Male"
      when debug: echo key & ": " & entry

      if key == "name":
        temp = temp.replace("EmptyShort", translationName[entry])
        temp = temp.replace("EmptyLong", entry)
      else:
        let
          idxKeyBegin = temp.find(key & ':')
          idxKeyEnd = idxKeyBegin+key.len.succ
        if key in ["description"]:
          temp.insert(&"\"\"\"{entry}\"\"\"", idxKeyEnd.succ)
        elif key in ["item1", "item2", "item3", "extra"]:
          if entry.isEmptyOrWhitespace or entry.cstring == nil:
            temp.insert("string.none", idxKeyEnd.succ)
          else:
            temp.insert(&""""{entry}".some""", idxKeyEnd.succ)
        else:
          temp.insert(entry, idxKeyEnd.succ)

    streamFileOutput.writeLine "\n" & temp
    temp = backgroundTemplate

when isMainModule:
  run()