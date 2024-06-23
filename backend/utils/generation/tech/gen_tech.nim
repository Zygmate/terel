
func createHealingSalve*: HealingSalve =
  HealingSalve(
    id: -1,
    name: "healing salve",
    discipline: Herbology,
    minIN: 5,
    component1: "KaduraStem",
    component2: "GinkaRoot",
    description: """Restores 20 Health Points (HP), 5 units are made"""
  )

func createFatigueRestorer*: FatigueRestorer =
  FatigueRestorer(
    id: -1,
    name: "fatigue restorer",
    discipline: Herbology,
    minIN: 8,
    component1: "CocaLeaves",
    component2: "TobaccoLeaves",
    description: """Restores 20 Fatigue Points, 4 units are made"""
  )

func createPoisonCure*: PoisonCure =
  PoisonCure(
    id: -1,
    name: "poison cure",
    discipline: Herbology,
    minIN: 11,
    component1: "Venom",
    component2: "KaduraStem",
    description: """Removes 80 Poison level, 3 units are made"""
  )

func createFatigueLimiter*: FatigueLimiter =
  FatigueLimiter(
    id: -1,
    name: "fatigue limiter",
    discipline: Herbology,
    minIN: 13,
    component1: "FatigueRestorer",
    component2: "Witchbane",
    description: """Halved Fatigue consumption, 2 units are made"""
  )

func createAccelerateHealing*: AccelerateHealing =
  AccelerateHealing(
    id: -1,
    name: "accelerate healing",
    discipline: Herbology,
    minIN: 15,
    component1: "HealingSalve",
    component2: "CocaLeaves",
    description: """Slowly regenerates 25 Health Points over the course of 90 seconds, 1 unit is made"""
  )

func createWonderDrug*: WonderDrug =
  WonderDrug(
    id: -1,
    name: "wonder drug",
    discipline: Herbology,
    minIN: 17,
    component1: "AccelerateHealing",
    component2: "PoppyFlowers",
    description: """Restores 60 Health and Fatigue Points, 1 unit is made"""
  )

func createCureAll*: CureAll =
  CureAll(
    id: -1,
    name: "cure all",
    discipline: Herbology,
    minIN: 19,
    component1: "WonderDrug",
    component2: "BigChiefSnakeOil",
    description: """Fully restores Health and Fatigue Points, and removes all Poison, 1 unit is made"""
  )

func createStrongPoison*: StrongPoison =
  StrongPoison(
    id: -1,
    name: "strong poison",
    discipline: Chemistry,
    minIN: 5,
    component1: "Varham'sAquaVitae",
    component2: "Monroe'sCleaner",
    description: """Adds 290 points of Poison to the target, 3 units are made"""
  )

func createCharges*: Charges =
  Charges(
    id: -1,
    name: "charges",
    discipline: Chemistry,
    minIN: 8,
    component1: "ElectrolyteSolution",
    component2: "MetalPlates",
    description: """Used and consumed for various technological items, 50 units are made"""
  )

func createAnimalScent*: AnimalScent =
  AnimalScent(
    id: -1,
    name: "animal scent",
    discipline: Chemistry,
    minIN: 11,
    component1: "Bromide",
    component2: "MorningStarPerfume",
    description: """Prevents wild animals from entering combat with the player or their party, and will assist the player in combat against enemies, 1 unit is made"""
  )

func createCorrosiveAcid*: CorrosiveAcid =
  CorrosiveAcid(
    id: -1,
    name: "corrosive acid",
    discipline: Chemistry,
    minIN: 13,
    component1: "Pete'sCarbolicAcid",
    component2: "SulphurPills",
    description: """Thrown weapon similar to a grenade, 1 unit is made"""
  )

func createHallucinate*: Hallucinate =
  Hallucinate(
    id: -1,
    name: "hallucinate",
    discipline: Chemistry,
    minIN: 15,
    component1: "Mushroom",
    component2: "Varham'sAquaVitae",
    description: """Causes the target to attempt to flee, 1 unit is made"""
  )

func createParalyzer*: Paralyzer =
  Paralyzer(
    id: -1,
    name: "paralyzer",
    discipline: Chemistry,
    minIN: 17,
    component1: "PotassiumChloride",
    component2: "StrongPoison",
    description: """Temporarily paralyzes any target, 1 unit is made"""
  )

func createAnaesthisizer*: Anaesthisizer =
  Anaesthisizer(
    id: -1,
    name: "anaesthisizer",
    discipline: Chemistry,
    minIN: 19,
    component1: "Hallucinate",
    component2: "Bromide",
    description: """Causes the target to fall asleep, 1 unit is made"""
  )

func createElectricLight*: ElectricLight =
  ElectricLight(
    id: -1,
    name: "electric light",
    discipline: Electric,
    minIN: 5,
    component1: "Lantern",
    component2: "Filament",
    description: """Illuminates the area around the character equipping it, scaling with TA"""
  )

func createChargedRing*: ChargedRing =
  ChargedRing(
    id: -1,
    name: "charged ring",
    discipline: Electric,
    minIN: 8,
    component1: "CopperRing",
    component2: "Capacitor",
    description: """2 Dexterity, scaling with TA"""
  )

func createFlowSpectrometer*: FlowSpectrometer =
  FlowSpectrometer(
    id: -1,
    name: "flow spectrometer",
    discipline: Electric,
    minIN: 11,
    component1: "SmallElectricalParts",
    component2: "Compass",
    description: """Detects all non-magickal traps within the character's field of vision while equipped, requires charges"""
  )

func createShockingTraffic*: ShockingTraffic =
  ShockingTraffic(
    id: -1,
    name: "shocking staff",
    discipline: Electric,
    minIN: 13,
    component1: "LargeCapacitor",
    component2: "Staff",
    description: """Melee weapon; inflicts 5-10 additional Electrical Damage, requires charges"""
  )

func createChapeuOfMagneticInversion*: ChapeuOfMagneticInversion =
  ChapeuOfMagneticInversion(
    id: -1,
    name: "chapeu of magnetic inversion",
    discipline: Electric,
    minIN: 15,
    component1: "ElectricalCoil",
    component2: "TopHat",
    description: """DR 20"""
  )

func createHealingJacket*: HealingJacket =
  HealingJacket(
    id: -1,
    name: "healing jacket",
    discipline: Electric,
    minIN: 17,
    component1: "ElectricalHarness",
    component2: "LeatherArmour",
    description: """AC 8, DR 14, FR 5, Restores 4 Health Points (HP) per 5 seconds"""
  )

func createTeslaRod*: TeslaRod =
  TeslaRod(
    id: -1,
    name: "tesla rod",
    discipline: Electric,
    minIN: 19,
    component1: "TeslaCoil",
    component2: "ShockingStaff",
    description: """Treated as a Firearm. Deals 10-40 additional Electrical Damage, requires charges"""
  )

func createMolotovCocktail*: MolotovCocktail =
  MolotovCocktail(
    id: -1,
    name: "molotov cocktail",
    discipline: Explosives,
    minIN: 5,
    component1: "Fuel",
    component2: "Rag",
    description: """Causes AoE Fire Damage and pushback, 1 unit is made"""
  )

func createFlashGrenade*: FlashGrenade =
  FlashGrenade(
    id: -1,
    name: "flash grenade",
    discipline: Explosives,
    minIN: 8,
    component1: "Magnesium",
    component2: "Wine",
    description: """Causes AoE blindness (-30% TH), 5 units are made"""
  )

func createSmokeGrenade*: SmokeGrenade =
  SmokeGrenade(
    id: -1,
    name: "smoke grenade",
    discipline: Explosives,
    minIN: 11,
    component1: "Tom'sFertilizer",
    component2: "CkSugar",
    description: """Creates a 6x4 area of smoke within which ranged attacks are prevented, 5 units are made"""
  )

func createStunGrenade*: StunGrenade =
  StunGrenade(
    id: -1,
    name: "stun grenade",
    discipline: Explosives,
    minIN: 13,
    component1: "StearicAcis",
    component2: "Saltpeter",
    description: """Stuns all characters in the blast radius, 4 units are made"""
  )

func createExplosiveGrenade*: ExplosiveGrenade =
  ExplosiveGrenade(
    id: -1,
    name: "explosive grenade",
    discipline: Explosives,
    minIN: 15,
    component1: "BlackPowder",
    component2: "MetalCan",
    description: """Causes AoE physical damage, 3 units are made"""
  )

func createFireObstruction*: FireObstruction =
  FireObstruction(
    id: -1,
    name: "fire obstruction",
    discipline: Explosives,
    minIN: 17,
    component1: "Kerosene",
    component2: "LiquidSoap",
    description: """Creates a 3x3 area of fire damage lasting about 10 seconds, 3 units are made"""
  )

func createDynamite*: Dynamite =
  Dynamite(
    id: -1,
    name: "dynamite",
    discipline: Explosives,
    minIN: 19,
    component1: "Nitroglycerin",
    component2: "Saltpeter",
    description: """Used and placed, not thrown, dealing AoE Physical Damage, 1 unit is made"""
  )

func createHandCraftFlintlock*: HandCraftFlintlock =
  HandCraftFlintlock(
    id: -1,
    name: "hand crafted flintlock",
    discipline: GunSmithy,
    minIN: 5,
    component1: "BrokenFlintlockPistol",
    component2: "SmallMetalTub",
    description: """D 2-6; FT 1-4; ТН +5; RNG 15; speed 5"""
  )

func createFineRevolver*: FineRevolver =
  FineRevolver(
    id: -1,
    name: "fine revolver",
    discipline: GunSmithy,
    minIN: 8,
    component1: "RevolverParts",
    component2: "RevolverChamber",
    description: """D 3-12; FT 3-9; ТН +15; RNG 15; speed 12"""
  )

func createRepeaterRifle*: RepeaterRifle =
  RepeaterRifle(
    id: -1,
    name: "repeater rifle",
    discipline: GunSmithy,
    minIN: 11,
    component1: "HuntingRifle",
    component2: "RevolverChamber",
    description: """D 2-10; FT 1-5; RNG 15; speed 12; 2 bullets per shot"""
  )

func createHushedRevolver*: HushedRevolver =
  HushedRevolver(
    id: -1,
    name: "hushed revolver",
    discipline: GunSmithy,
    minIN: 13,
    component1: "FineRevolver",
    component2: "EngineMuffler",
    description: """D 2-9; FT 2-5; RNG 9; speed 8"""
  )

func createLookingGlassRifle*: LookingGlassRifle =
  LookingGlassRifle(
    id: -1,
    name: "looking glass rifle",
    discipline: GunSmithy,
    minIN: 15,
    component1: "Marksman'sRifle",
    component2: "LookingGlass",
    description: """D 40-40; FT 40-40; TH +20; RNG 25; speed 1"""
  )

func createHandCannon*: HandCannon =
  HandCannon(
    id: -1,
    name: "hand cannon",
    discipline: GunSmithy,
    minIN: 17,
    component1: "ClaringtonRifle",
    component2: "FancyPistol",
    description: """D 5-20; FT 1-10; RNG 12; speed 8"""
  )

func createElephantGun*: ElephantGun =
  ElephantGun(
    id: -1,
    name: "elephant gun",
    discipline: GunSmithy,
    minIN: 19,
    component1: "HuntingRifle",
    component2: "BigPipe",
    description: """D 20-40; FT 1-10; RNG 15; speed 4"""
  )

func createSpikeTrap*: SpikeTrap =
  SpikeTrap(
    id: -1,
    name: "spike trap",
    discipline: Mechanical,
    minIN: 5,
    component1: "RailroadSpike",
    component2: "LargeSpring",
    description: """Causes passive damage, 3 units are made"""
  )

func createTrapSpringer*: TrapSpringer =
  TrapSpringer(
    id: -1,
    name: "trap springer",
    discipline: Mechanical,
    minIN: 8,
    component1: "MetalCasing",
    component2: "SmallSpring",
    description: """Disarms trapped containers, 3 units are made"""
  )

func createAutoSkeletonKey*: AutoSkeletonKey =
  AutoSkeletonKey(
    id: -1,
    name: "auto skeleton key",
    discipline: Mechanical,
    minIN: 11,
    component1: "Lockpicks",
    component2: "SmallSpring",
    description: """Increases Pick Locks skill by 10%, 1 unit made"""
  )

func createEyeGear*: EyeGear =
  EyeGear(
    id: -1,
    name: "eye gear",
    discipline: Mechanical,
    minIN: 13,
    component1: "PocketWatchParts",
    component2: "Eyglasses",
    description: """2 Perception (scales with TA), 1 unit made"""
  )

func createBearTrap*: BearTrap =
  BearTrap(
    id: -1,
    name: "bear trap",
    discipline: Mechanical,
    minIN: 15,
    component1: "MetalClamp",
    component2: "LargeSpring",
    description: """Causes passive damage and Immobilizes a target, 3 units are made"""
  )

func createClockworDecoy*: ClockworDecoy =
  ClockworDecoy(
    id: -1,
    name: "clockwork decoy",
    discipline: Mechanical,
    minIN: 17,
    component1: "ClockworkParts",
    component2: "SmallSpring",
    description: """Distracts NPCs from the player character, 2 units are made"""
  )

func createMechanizedArachnid*: MechanizedArachnid =
  MechanizedArachnid(
    id: -1,
    name: "mechanized arachnid",
    discipline: Mechanical,
    minIN: 19,
    component1: "SmallSteamEngine",
    component2: "LargeGears",
    description: """Creates a free, mechanical follower, 1 unit is made"""
  )

func createPureOre*: PureOre =
  PureOre(
    id: -1,
    name: "pure ore",
    discipline: Smithy,
    minIN: 5,
    component1: "IronOre",
    component2: "Steel",
    description: """Quest Item and crafting ingredient"""
  )

func createBalancedSword*: BalancedSword =
  BalancedSword(
    id: -1,
    name: "balanced sword",
    discipline: Smithy,
    minIN: 8,
    component1: "PureOre",
    component2: "FineHiltAndGuard",
    description: """3-12 HD, 3-9 FT, 18 SP, 40 WE, 100 QU"""
  )

func createFeatherWeightAxe*: FeatherWeightAxe =
  FeatherWeightAxe(
    id: -1,
    name: "feather-weight axe",
    discipline: Smithy,
    minIN: 11,
    component1: "DwarvenOre",
    component2: "OakAxeHandle",
    description: """1-16 HD, 3-11 FT, 12 SP, 70 WE, 100 QU"""
  )

func createDwarvenGauntlets*: DwarvenGauntlets =
  DwarvenGauntlets(
    id: -1,
    name: "dwarven gauntlets",
    discipline: Smithy,
    minIN: 13,
    component1: "SheetMetal",
    component2: "LeatherGloves",
    description: """3 AC, 5 DR, 7 D, Wgt 15, HPs 100"""
  )

func createHelmetOfVision*: HelmetOfVision =
  HelmetOfVision(
    id: -1,
    name: "helmet of vision",
    discipline: Smithy,
    minIN: 15,
    component1: "GreatHelm",
    component2: "LeatherStraps",
    description: """3 AC, 7 DR, Wgt 50, HPs 130, no Perception penalty"""
  )

func createFeatherWeightChainmail*: FeatherWeightChainmail =
  FeatherWeightChainmail(
    id: -1,
    name: "feather-weight chainmail",
    discipline: Smithy,
    minIN: 17,
    component1: "SpoolOfHeavyWire",
    component2: "LeatherArmor",
    description: """13 AC, 25 DR, 5 FR, -10 ER, -25 NP, 270 WE, 200 QU"""
  )

func createElitePlatemail*: ElitePlatemail =
  ElitePlatemail(
    id: -1,
    name: "elite platemail",
    discipline: Smithy,
    minIN: 19,
    component1: "DwarvenSteel",
    component2: "FeatherWeightChainmail",
    description: """20 AC, 40 DR, 30 FR,-35 NP, 800 WE, 400 QU"""
  )

func createElixirOfPersuasion*: ElixirOfPersuasion =
  ElixirOfPersuasion(
    id: -1,
    name: "elixir of persuasion",
    discipline: Therapeutics,
    minIN: 5,
    component1: "MigraineCure",
    component2: "Thermometer",
    description: """Increases Persuasion +2/20 for 4 hours, 3 units are made"""
  )

func createElixirOfPhysicalProwess*: ElixirOfPhysicalProwess =
  ElixirOfPhysicalProwess(
    id: -1,
    name: "elixir of physical prowess",
    discipline: Therapeutics,
    minIN: 8,
    component1: "FamousBloodPills",
    component2: "SpiritOfCamphor",
    description: """2 Strength for 4 hours, 3 unites are made"""
  )

func createLiquidOfAwareness*: LiquidOfAwareness =
  LiquidOfAwareness(
    id: -1,
    name: "liquid of awareness",
    discipline: Therapeutics,
    minIN: 11,
    component1: "MigrainCure",
    component2: "Doolittle'sGlyceride",
    description: """2 Perception for 4 hours, 3 units are made"""
  )

func createTonicOfIncreasedReflexes*: TonicOfIncreasedReflexes =
  TonicOfIncreasedReflexes(
    id: -1,
    name: "tonic of increased reflexes",
    discipline: Therapeutics,
    minIN: 13,
    component1: "TinctureOfArnica",
    component2: "RheumathismCure",
    description: """2 Dexterity for 4 hours, 3 units are made"""
  )

func createMindMarvel*: MindMarvel =
  MindMarvel(
    id: -1,
    name: "mind marvel",
    discipline: Therapeutics,
    minIN: 15,
    component1: "NervePills",
    component2: "ElixirOfPersuasion",
    description: """2 Intelligence, Willpower, Perception, Charisma for 4 hours, 1 unit is made"""
  )

func createEnergizer*: Energizer =
  Energizer(
    id: -1,
    name: "energizer",
    discipline: Therapeutics,
    minIN: 17,
    component1: "Quinine",
    component2: "ElixireOfPhysicalProwess",
    description: """2 Strength, Constitution, Dexterity, Beauty for 4 hours, 1 unit is made"""
  )

func createRevitalizer*: Revitalizer =
  Revitalizer(
    id: -1,
    name: "revitalizer",
    discipline: Therapeutics,
    minIN: 19,
    component1: "MindMarvel",
    component2: "Energizer",
    description: """2 to all Stats for 3 hours, 1 unit is made"""
  )
