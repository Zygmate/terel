from std/options import Option, some, none

type
  GenderLock* = enum
    Any, Male, Female
  Background* = object of RootObj
    id*: int
    name*: string
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
    critFailureChance*: int
    critHit*: int
    critFailure*: int
    speedMod*: int
    positiveReactionMod*: int
    negativeReactionMod*: int
    reactionMod*: int
    alignment*: int
    maxAlignment*: int
    goldMod*: int
    item1*: Option[string]
    item2*: Option[string]
    item3*: Option[string]
    extraMagickPoints*: int
    genderLock*: GenderLock
    isTechLocked*: bool
    explosiveExpertiseMod*: int
    extra*: Option[string]
    description*: string
  ApprenticedToABlacksmith* = object of Background
  ApprenticedToAShopkeeper* = object of Background
  BeatWithAnUglyStick* = object of Background
  BornUnderASign* = object of Background
  ChildOfAHero* = object of Background
  DarkSight* = object of Background
  Educator* = object of Background
  ExtremePersonality* = object of Background
  Hyperactive* = object of Background
  Inheritance* = object of Background
  MadDoctor* = object of Background
  MiracleOperation* = object of Background
  NietzschePosterChild* = object of Background
  OnlyChild* = object of Background
  ProfessionalKnifeTosser* = object of Background
  RaisedByMonks* = object of Background
  RaisedBySnakeHandlers* = object of Background
  RaisedInThePits* = object of Background
  RanAwayWithTheCircus* = object of Background
  Sickly* = object of Background
  SoldYourSoul* = object of Background
  SpecialPerson* = object of Background
  TrollOffspring* = object of Background
  AfraidOfTheDark* = object of Background
  Agoraphobic* = object of Background
  ArmyTraining* = object of Background
  Arsonist* = object of Background
  Bandit* = object of Background
  Barbarian* = object of Background
  Bookworm* = object of Background
  BrideOfFrankenstein* = object of Background
  Bully* = object of Background
  CharlatansProtege* = object of Background
  ClanlessDwarf* = object of Background
  DarkElfFollower* = object of Background
  DayMage* = object of Background
  DisenfranchisedGnome* = object of Background
  ElvenBlood* = object of Background
  EscapedLunatic* = object of Background
  FactoryEscapee* = object of Background
  FeralChild* = object of Background
  FoppishElf* = object of Background
  FrankensteinMonster* = object of Background
  FreedBodyguard* = object of Background
  HalflingOrphan* = object of Background
  Hydrophobic* = object of Background
  IdiotSavant* = object of Background
  LadysMan* = object of Background
  MagickAllergy* = object of Background
  NatureMage* = object of Background
  NightMage* = object of Background
  RaisedByElves* = object of Background
  RaisedByOrcs* = object of Background
  RareHalfOgreBirth* = object of Background
  SentToCharmSchool* = object of Background
  ShelteredChildhood* = object of Background
  SkyMage* = object of Background
  SuperModel* = object of Background
  SuppressedOrcishLooks* = object of Background
  Technophobia* = object of Background
  Tomboy* = object of Background
  ToughHide* = object of Background
  WildHalfOgre* = object of Background

when false:
  func createEmpty*: ApprenticedToABlacksmith =
    ## Just for demonstration purposes during development.
    ## Useless during runtime.
    ApprenticedToABlacksmith(
      id: -1,
      name: "Apprenticed to a Blacksmith",
      strength: 0,
      intelligence: 0,
      constitution: 0,
      willpower: 0,
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
      critFailureChance: 0,
      critHit: 0,
      critFailure: 0,
      speedMod: 0,
      positiveReactionMod: 0,
      negativeReactionMod: 0,
      reactionMod: 0,
      alignment: 0,
      maxAlignment: 0,
      goldMod: 0,
      item1: "".some,
      item2: string.none,
      item3: string.none,
      extraMagickPoints: 0,
      genderLock: Any,
      isTechLocked: false,
      explosiveExpertiseMod: 0,
      extra: string.none,
      description: ""
    )

func createApprenticedToABlacksmith*: ApprenticedToABlacksmith =
  ApprenticedToABlacksmith(
    id: -1,
    name: "Apprenticed to a Blacksmith",
    strength: 1,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
    dexterity: -2,
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
    repair: 2,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "Your master is a hard man. You gain a bonus to Strength (+1) and a bonus to your Repair skill, but you suffer a penalty to Dexterity (-2) due to the strenuous and repetitive hard labor."
  )

func createApprenticedToAShopkeeper*: ApprenticedToAShopkeeper =
  ApprenticedToAShopkeeper(
    id: -1,
    name: "Apprenticed to a Shopkeeper",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
    dexterity: -1,
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
    haggle: 3,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "Spending your whole childhood inside a shop, you gain an exceptional bonus to Haggle, but you suffer a penalty to Dexterity (-1)."
  )

func createBeatWithAnUglyStick*: BeatWithAnUglyStick =
  BeatWithAnUglyStick(
    id: -1,
    name: "Beat with an Ugly Stick",
    strength: 2,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
    dexterity: 2,
    perception: 0,
    beauty: -6,
    charisma: 0,
    hasGender: false,
    technical: 0,
    magickal: 0,
    bow: 1,
    dodge: 1,
    melee: 1,
    throwing: 1,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: """You are ugly. There is just no other word for it, unless you consider "hideous" a better word. Children flee from you in terror and even the kindest of souls finds it difficult to stand your presence for long. As a result of your countenance, you take an extreme penalty to Beauty (-6), but because you have had to defend yourself from frequent attacks, you gain a bonus to Strength (+2), Dexterity (+2), and a slight bonus to all of your Combat Skills."""
  )

func createBornUnderASign*: BornUnderASign =
  BornUnderASign(
    id: -1,
    name: "Born Under a Sign",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critSuccessChance: -10,
    critFailureChance: -10,
    critHit: 10,
    critFailure: 10,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "You were born during an astounding astronomical event. As a result, you experience fewer critical hits and critical misses, but when you do get them their results tend to be spectacular."
  )

func createChildOfAHero*: ChildOfAHero =
  ChildOfAHero(
    id: -1,
    name: "Child of a Hero",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: "1 Enchanted Sword".some,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: "x2 Bad Reaction Adjustment".some,
    description: "You start with your father's +1 sword and are known throughout the land as a child of a Hero. Therefore you will incur terrible negative reaction for any evil act."
  )

func createDarkSight*: DarkSight =
  DarkSight(
    id: -1,
    name: "Dark Sight",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: "-15 Perception (PE) while in light ; +15 Perception (PE) while in dark".some,
    description: "Your eyes are overly sensitive to light. You are nearly blind in daylight, but you can see perfectly in darkness. Therefore, all skill lighting penalties are reversed for you."
  )

func createEducator*: Educator =
  Educator(
    id: -1,
    name: "Educator",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: "- 1 to max number of followers  followers can be trained".some,
    description: "You are a natural teacher. As you learn skill training, you can teach your followers the previous training step. So as an Expert, you can teach your followers as Apprentices, if they qualify. However, since you spend extra time with each follower, you cannot have as many as usual (-1 to maximum followers)."
  )

func createExtremePersonality*: ExtremePersonality =
  ExtremePersonality(
    id: -1,
    name: "Extreme Personality",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 30,
    negativeReactionMod: -30,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "You possess an extreme personality. People react more strongly to your presence, and tend to grow to either love or hate you."
  )

func createHyperactive*: Hyperactive =
  Hyperactive(
    id: -1,
    name: "Hyperactive",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
    dexterity: 0,
    perception: 0,
    beauty: 0,
    charisma: -1,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 1,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "You are constantly busy. Your Speed is higher than normal (+1), but most people find you annoying, and your Charisma suffers (-1)."
  )

func createInheritance*: Inheritance =
  Inheritance(
    id: -1,
    name: "Inheritance",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: -1,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 800,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "You were orphaned as a young child and inherited a lot of money. The easy life has cost you a penalty to Willpower (-1). Most of the money has been spent by now, but you begin with twice the normal starting wealth."
  )

func createMadDoctor*: MadDoctor =
  MadDoctor(
    id: -1,
    name: "Mad Doctor",
    strength: 0,
    intelligence: 2,
    constitution: -3,
    willpower: 0,
    dexterity: -2,
    perception: 2,
    beauty: -1,
    charisma: -1,
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
    heal: 4,
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
    poisonRes: 20,
    electricalRes: 20,
    critSuccessChance: 0,
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "You have performed numerous untested and dangerous medical experiments upon yourself and suffer from the adverse effects. You have bonuses to Intelligence (+2), Perception (+2), Poison Resistances (+20%), Electrical Resistance (+20%), and a bonus to your Healing skill (+1), but you suffer penalties to Beauty (-1), Charisma (-1), Dexterity (-2), and Constitution (-3)."
  )

func createMiracleOperation*: MiracleOperation =
  MiracleOperation(
    id: -1,
    name: "Miracle Operation",
    strength: -3,
    intelligence: 3,
    constitution: -5,
    willpower: 0,
    dexterity: -3,
    perception: 5,
    beauty: 0,
    charisma: 3,
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
    critFailureChance: 0,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: string.none,
    description: "Though born to a wealthy family as a young child, you mysteriously lost your sight. It was discovered that you had contracted a degenerative and always fatal disease. As a blind child, your early development favored indoor activities and development befitting the wealthiest of society. You gained bonuses to Intelligence (+3) and Charisma (+3). Your senses of touch, hearing, and smell increased to compensate for your blindness, resulting in a bonus to Perception (+5). However, you suffered physically, leading to penalties in Strength (-3), Dexterity (-3), and Constitution (-5). As a young adult, your parents, out of desperation, paid for the services of a renowned, if unorthodox physician, who miraculously restored your sight. The operation cost your family its fortune, so you set out to make your own."
  )

func createNietzschePosterChild*: NietzschePosterChild =
  NietzschePosterChild(
    id: -1,
    name: "Nietzsche Poster Child",
    strength: 0,
    intelligence: 0,
    constitution: 0,
    willpower: 0,
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
    critFailureChance: 20,
    critHit: 0,
    critFailure: 0,
    speedMod: 0,
    positiveReactionMod: 0,
    negativeReactionMod: 0,
    reactionMod: 0,
    alignment: 0,
    maxAlignment: 0,
    goldMod: 0,
    item1: string.none,
    item2: string.none,
    item3: string.none,
    extraMagickPoints: 0,
    genderLock: Any,
    isTechLocked: false,
    explosiveExpertiseMod: 0,
    extra: "10% Experience Point Bonus".some,
    description: """Nietzsche once said "That which does not kill me makes me stronger," and he may have been referring to you. All your life you have been making mistakes, but you always seem to come out better afterwards. In other words, you critically fail more than normal but you have a 10% Experience Points bonus."""
  )