type
  Race* = object of RootObj
    id*: int
    strength*: int
    intelligence*: int
    cn*: int
    willpower*: int
    dexterity*: int
    pe*: int
    be*: int
    ch*: int
    hasGender*: bool
    technical*: int
    magickal*: int
    bow*: int
    dodge*: int
    melee*: int
    throwing*: int
    backstab*: int
    pickpocket*: int
    prowling*: int
    spottrap*: int
    gambling*: int
    haggle*: int
    heal*: int
    persuasion*: int
    techMod*: int
    repair*: int
    firearms*: int
    pickLock*: int
    disarmtrap*: int
    physDmgRes*: int
    fatigueDmgRes*: int
    magickRes*: int
    fireRes*: int
    poisonRes*: int
    electricalRes*: int
    critSuccessChance*: int
    negativeReactionMod*: int
    allowOneHandGun*: bool
    fatigueCostMultiplierSpells*: int
    description*: string
  Gnome* = object of Race
  Dwarf* = object of Race
  Elf* = object of Race
  Human* = object of Race
  Halfling* = object of Race
  HalfOgre* = object of Race
  HalfOrc* = object of Race
  HalfElf* = object of Race


func createGnome*: Gnome =
  Gnome(
    id: -1,
    strength: -1,
    intelligence: -1,
    cn: -1,
    willpower: -1,
    dexterity: -1,
    pe: -1,
    be: -1,
    ch: -1,
    hasGender: false,
    technical: -1,
    magickal: -1,
    bow: -1,
    dodge: -1,
    melee: -1,
    throwing: -1,
    backstab: -1,
    pickpocket: -1,
    prowling: -1,
    spottrap: -1,
    gambling: -1,
    haggle: -1,
    heal: -1,
    persuasion: -1,
    techMod: -1,
    repair: -1,
    firearms: -1,
    pickLock: -1,
    disarmtrap: -1,
    physDmgRes: -1,
    fatigueDmgRes: -1,
    magickRes: -1,
    fireRes: -1,
    poisonRes: -1,
    electricalRes: -1,
    critSuccessChance: -1,
    negativeReactionMod: -1,
    allowOneHandGun: true,
    fatigueCostMultiplierSpells: -1,
    description: ""
  )