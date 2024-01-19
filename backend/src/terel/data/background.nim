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
  AfraidOfTheDarkAgoraphobic* = object of Background
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
      name: "Apprenticed To A Blacksmith",
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
      reactionMod: 0,
      alignment: 0,
      maxAlignment: 0,
      goldMod: 0,
      item1: "".some,
      item2: string.none,
      item3: string.none,
      extraMagickPoints: 0,
      genderLock: false,
      isTechLocked: false,
      explosiveExpertiseMod: 0,
      extra: string.none,
      description: ""
    )

func createApprenticedToABlacksmith*: ApprenticedToABlacksmith =
  ApprenticedToABlacksmith(
    id: -1,
    name: "Apprenticed To A Blacksmith",
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
    name: "Apprenticed To A Shopkeeper",
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
    description: "Spending your whole childhood inside a shop, you gain an exceptional bonus to Haggle, but you suffer a penalty to Dexterity (-1)."
  )