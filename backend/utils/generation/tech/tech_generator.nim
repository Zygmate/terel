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
  ],
  pkg/[
    anycase
  ]

func toCompString(rawVal: string): string =
  ## Convert CSV value strings of `college` column into enumeration
  ## as string from our Nim implementation.
  case rawVal
    elif rawVal.startsWith("gun"):
      case rawVal
        of "gun smithy": "GunSmithy"
        else: raise KeyError.newException """Key can be either "necromantic black" or "necromantic white"!"""
    else:
      rawVal.capitalizeAscii

const
  debug {.booldefine.} = false
  techTemplate = "tech_template.txt".slurp
  translationNameRaw = {
    "healing salve": "HealingSalve",
    "fatigue restorer": "FatigueRestorer",
    "poison cure": "PoisonCure",
    "fatigue limiter": "FatigueLimiter",
    "accelerate healing": "AccelerateHealing",
    "wonder drug": "WonderDrug",
    "cure all": "CureAll",
    "strong poison": "StrongPoison",
    "charges": "Charges",
    "animal scent": "AnimalScent",
    "corrosive acid": "CorrosiveAcid",
    "hallucinate": "Hallucinate",
    "paralyzer": "Paralyzer",
    "anaesthisizer": "Anaesthisizer",
    "electric light": "ElectricLight",
    "charged ring": "ChargedRing",
    "flow spectrometer": "FlowSpectrometer",
    "shocking staff": "ShockingTraffic",
    "chapeu of magnetic inversion": "ChapeuOfMagneticInversion",
    "healing jacket": "HealingJacket",
    "tesla rod": "TeslaRod",
    "molotov cocktail": "MolotovCocktail",
    "flash grenade": "FlashGrenade",
    "smoke grenade": "SmokeGrenade",
    "stun grenade": "StunGrenade",
    "explosive grenade": "ExplosiveGrenade",
    "fire obstruction": "FireObstruction",
    "dynamite": "Dynamite",
    "hand crafted flintlock": "HandCraftFlintlock",
    "fine revolver": "FineRevolver",
    "repeater rifle": "RepeaterRifle",
    "hushed revolver": "HushedRevolver",
    "looking glass rifle": "LookingGlassRifle",
    "hand cannon": "HandCannon",
    "elephant gun": "ElephantGun",
    "spike trap": "SpikeTrap",
    "trap springer": "TrapSpringer",
    "auto skeleton key": "AutoSkeletonKey",
    "eye gear": "EyeGear",
    "bear trap": "BearTrap",
    "clockwork decoy": "ClockworDecoy",
    "mechanized arachnid": "MechanizedArachnid",
    "pure ore": "PureOre",
    "balanced sword": "BalancedSword",
    "feather-weight axe": "FeatherWeightAxe",
    "dwarven gauntlets": "DwarvenGauntlets",
    "helmet of vision": "HelmetOfVision",
    "feather-weight chainmail": "FeatherWeightChainmail",
    "elite platemail": "ElitePlatemail",
    "elixir of persuasion": "ElixirOfPersuasion",
    "elixir of physical prowess": "ElixirOfPhysicalProwess",
    "liquid of awareness": "LiquidOfAwareness",
    "tonic of increased reflexes": "TonicOfIncreasedReflexes",
    "mind marvel": "MindMarvel",
    "energizer": "Energizer",
    "revitalizer": "Revitalizer"
  }
  translationKeyRaw = {
    "name": "name",
    "techDiscipline": "discipline",
    "minIN": "minIN",
    "comp1": "component1",
    "comp2": "component2",
    "result": "description"
  }

let
  translationName = translationNameRaw.toTable
  translationKey = translationKeyRaw.toTable

when debug:
  import std/logging
  let logger = newConsoleLogger(flushThreshold = lvlAll)

proc run =
  let streamFileOutput = "gen_tech.nim".newFileStream fmReadWrite
  var
    p: CsvParser
    temp = techTemplate

  p.open "../../../../docs/game-data/tech_discipline.tsv", '\t'
  defer: p.close
  p.readHeaderRow

  while p.readRow():
    for col in p.headers:
      let key = try: translationKey[col] except KeyError:
        when debug: logger.log(lvlError, "KeyError at col: " & col)
        continue
      var entry = p.rowEntry(col)
      if key == "discipline":
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
        elif entry[0].isDigit or key in ["discipline"]:
          temp.insert(entry, idxKeyEnd.succ)
        else:
          temp.insert('"' & entry.replace("'", "").pascal & '"', idxKeyEnd.succ)

    streamFileOutput.writeLine "\n" & temp
    temp = techTemplate

when isMainModule:
  run()