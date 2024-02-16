##[
  Very simply generate Nim Code for Spells

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

func toCompString(rawVal: string): string =
  ## Convert CSV value strings of `college` column into enumeration
  ## as string from our Nim implementation.
  case rawVal
    elif rawVal.startsWith("necromantic"):
      case rawVal
        of "necromantic black": "NecromanticBlack"
        of "necromantic white": "NecromanticWhite"
        else: raise KeyError.newException """Key can be either "necromantic black" or "necromantic white"!"""
    else:
      rawVal.capitalizeAscii

const
  debug {.booldefine.} = false
  spellTemplate = "spell_template.txt".slurp
  translationNameRaw = {
    "Disarm": "Disarm",
    "Unlocking Cantrip": "UnlockingCantrip",
    "Unseen Force": "UnseenForce",
    "Spatial Distortion": "SpatialDistortion",
    "Teleportation": "Teleportation",
    "Sense alignment": "SenseAlignment",
    "See Contents": "SeeContents",
    "Read Aura": "ReadAura",
    "Sense Hidden": "SenseHidden",
    "Divine Magic": "DivineMagic",
    "vitality of air": "VitalityOfAir",
    "poison vapours": "PoisonVapours",
    "call winds": "CallWinds",
    "body of air": "BodyOfAir",
    "call air elemental": "CallAirElemental",
    "Strength of earth": "StrengthOfEarth",
    "stone throw": "StoneThrow",
    "wall of stone": "WallOfStone",
    "body of stone": "BodyOfStone",
    "call earth elemental": "CallEarthElemental",
    "agility of fire": "AgilityOfFire",
    "wall of fire": "WallOfFire",
    "fireflash": "FireFlash",
    "body of fire": "BodyOfFire",
    "call of fire": "CallOfFire",
    "purity of water": "PurityOfWater",
    "call fog": "CallFog",
    "squall of ice": "SquallOfIce",
    "body of water": "BodyOfWater",
    "call water elemental": "CallWaterElemental",
    "shield protection": "ShieldProtection",
    "jolt": "Jolt",
    "wall of force": "WallOfForce",
    "bolt of lightning": "BoltOfLightning",
    "disintegrate": "Disintegrate",
    "charm": "Charm",
    "stun": "Stun",
    "drain will": "DrainWill",
    "nightmare": "Nightmare",
    "dominate will": "DominateWill",
    "resist magick": "ResistMagick",
    "disperse magick": "DisperseMagick",
    "dweomer shield": "DweomerShield",
    "bonds of magick": "BondsOfMagick",
    "reflection shield": "ReflectionShield",
    "hardened hands": "HardenedHands",
    "weaken": "Weaken",
    "shrink": "Shrink",
    "flesh to stone": "FleshToStone",
    "polymorph": "Polymorph",
    "charm beast": "CharmBeast",
    "entangle": "Entangle",
    "control beast": "ControlBeast",
    "succour beast": "SuccourBeast",
    "regenerate": "Regenerate",
    "harm": "Harm",
    "conjure spirit": "ConjureSpirit",
    "summon undead": "SummonUndead",
    "create undead": "CreateUndead",
    "quench life": "QuenchLife",
    "minor healing": "MinorHealing",
    "halt poison": "HaltPoison",
    "major healing": "MajorHealing",
    "sanctuary": "Sanctuary",
    "resurrect": "Resurrect",
    "illuminate": "Illuminate",
    "flash": "Flash",
    "blur sight": "BlurSight",
    "phantasmal fiend": "PhantasmalFiend",
    "invisibility": "Invisibility",
    "plague of insects": "PlagueOfInsects",
    "orcish champion": "OrcishChampion",
    "guardian ogre": "GuardianOgre",
    "hellgate": "Hellgate",
    "familiar": "Familiar",
    "magelock": "Magelock",
    "congeal time": "CongealTime",
    "hasten": "Hasten",
    "stasis": "Stasis",
    "tempus fugit": "TempusFugit",
  }
  translationKeyRaw = {
    "name": "name",
    "college": "college",
    "minLVL": "minLVL",
    "minWP": "minWP",
    "energy": "energy",
    "energyMaintainancePerTenSec": "energyMaintainancePerTenSec",
    "isStackable": "isStackable",
    "desc": "description"
  }

let
  translationName = translationNameRaw.toTable
  translationKey = translationKeyRaw.toTable

when debug:
  import std/logging
  let logger = newConsoleLogger(flushThreshold = lvlAll)

proc run =
  let streamFileOutput = "gen_spell.nim".newFileStream fmReadWrite
  var
    p: CsvParser
    temp = spellTemplate

  p.open "../../../../docs/game-data/spell_meta.tsv", '\t'
  defer: p.close
  p.readHeaderRow

  while p.readRow():
    for col in p.headers:
      let key = try: translationKey[col] except KeyError:
        when debug: logger.log(lvlError, "KeyError at col: " & col)
        continue
      var entry = p.rowEntry(col)
      if key == "college":
        entry = entry.toCompString
      elif entry == "TRUE":
        entry = "true"
      elif entry == "FALSE":
        entry = "false"

      if key == "name":
        temp = temp.replace("EmptyShort", translationName[entry])
        temp = temp.replace("EmptyLong", entry)
      else:
        let
          idxKeyBegin = temp.find(key & ':')
          idxKeyEnd = idxKeyBegin+key.len.succ
        if key in ["description"]:
          temp.insert(&"\"\"\"{entry}\"\"\"", idxKeyEnd.succ)
        else:
          temp.insert(entry, idxKeyEnd.succ)

    streamFileOutput.writeLine "\n" & temp
    temp = spellTemplate

when isMainModule:
  run()