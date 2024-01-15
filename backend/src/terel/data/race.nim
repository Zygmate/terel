type
  Race* = object of RootObj
    id*: int
    strength*: int
    intelligence*: int
    constitution*: int
    willpower*: int
    dexterity*: int
    perception*: int
    beauty*: int
    charisma*: int
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
    strength: 0,
    intelligence: 0,
    constitution: -2,
    willpower: 2,
    dexterity: 0,
    perception: 0,
    beauty: 0,
    charisma: 0,
    hasGender: false,
    technical: 0,
    magickal: 0,
    bow: 0,
    dodge: 0,
    melee: 0,
    throwing: 0,
    backstab: 0,
    pickpocket: 0,
    prowling: 0,
    spottrap: 0,
    gambling: 0,
    haggle: 0,
    heal: 0,
    persuasion: 0,
    techMod: 0,
    repair: 0,
    firearms: 0,
    pickLock: 0,
    disarmtrap: 0,
    physDmgRes: 0,
    fatigueDmgRes: 0,
    magickRes: 0,
    fireRes: 0,
    poisonRes: 0,
    electricalRes: 0,
    critSuccessChance: 0,
    negativeReactionMod: 10,
    allowOneHandGun: true,
    fatigueCostMultiplierSpells: 1,
    description: "Gnomes, like dwarves and halflings, are a Minute Race. Baseline Gnomes start with a +2 bonus to Willpower, but have a -2 penalty to Constitution. They also gain +2 points to the Haggle skill, and gain +10 to any negative reaction."
  )

func createDwarf*: Dwarf =
  Dwarf(
    id: -1,
    strength: 1,
    intelligence: 0,
    constitution: 1,
    willpower: 0,
    dexterity: -1,
    perception: 0,
    beauty: 0,
    charisma: -1,
    hasGender: false,
    technical: 15,
    magickal: 0,
    bow: 0,
    dodge: 0,
    melee: 0,
    throwing: 0,
    backstab: 0,
    pickpocket: 0,
    prowling: 0,
    spottrap: 0,
    gambling: 0,
    haggle: 0,
    heal: 0,
    persuasion: 0,
    techMod: 2,
    repair: 0,
    firearms: 0,
    pickLock: 0,
    disarmtrap: 0,
    physDmgRes: 0,
    fatigueDmgRes: 0,
    magickRes: 0,
    fireRes: 0,
    poisonRes: 0,
    electricalRes: 0,
    critSuccessChance: 0,
    negativeReactionMod: 10,
    allowOneHandGun: true,
    fatigueCostMultiplierSpells: 2,
    description: "One of many humanoid races in the world of Arcanum. Baseline Dwarves have a 15% bonus to technical aptitude, gain 2 points in each technical skill, start with a +1 bonus to both Strength and Constitution, and have a -1 penalty in both Dexterity and Charisma. And for any Dwarven character wishing to cast spells, they will find that the fatigue cost for casting said spells are doubled."
  )