##[
  Master Module
]##

import
  terel/[
    meta,
    logg,
    #utils,
    #configurator,
    #database
  ],
  terel/model/[
    #configuration,
  ],
  terel/api/[
    container,
  ],
  terel/data/[
    race,
    background,
    tech
  ],
  std/[
    segfaults,
    json
  ],
  pkg/[
    jesterfork
  ]

const
  serverPort = 58111
  responseRaces = $ %containRace([%createGnome(), %createDwarf(), %createElf(), %createHuman(), %createHalfling(), %createHalfOgre(), %createHalfOrc(), %createHalfElf()])
  responseGnome = $ %containRace([%createGnome()])
  responseDwarf = $ %containRace([%createDwarf()])
  responseElf = $ %containRace([%createElf()])
  responseHuman = $ %containRace([%createHuman()])
  responseHalfling = $ %containRace([%createHalfling()])
  responseHalfOgre = $ %containRace([%createHalfOgre()])
  responseHalfOrc = $ %containRace([%createHalfOrc()])
  responseHalfElf = $ %containRace([%createHalfElf()])
  responseBackgrounds = $ %containBackground([%createApprenticedToABlacksmith(), %createApprenticedToAShopkeeper(), %createBeatWithAnUglyStick(), %createBornUnderASign(), %createChildOfAHero(), %createDarkSight(), %createEducator(), %createExtremePersonality(), %createHyperactive(), %createInheritance(), %createMadDoctor(), %createMiracleOperation(), %createNietzschePosterChild(), %createOnlyChild(), %createProfessionalKnifeTosser(), %createRaisedByMonks(), %createRaisedBySnakeHandlers(), %createRaisedInThePits(), %createRanAwayWithTheCircus(), %createSickly(), %createSoldYourSoul(), %createSpecialPerson(), %createTrollOffspring(), %createAfraidOfTheDark(), %createAgoraphobic(), %createArmyTraining(), %createArsonist(), %createBandit(), %createBarbarian(), %createBookworm(), %createBrideOfFrankenstein(), %createBully(), %createCharlatansProtege(), %createClanlessDwarf(), %createDarkElfFollower(), %createDayMage(), %createDisenfranchisedGnome(), %createElvenBlood(), %createEscapedLunatic(), %createFactoryEscapee(), %createFeralChild(), %createFoppishElf(), %createFrankensteinMonster(), %createFreedBodyguard(), %createHalflingOrphan(), %createHydrophobic(), %createIdiotSavant(), %createLadysMan(), %createMagickAllergy(), %createNatureMage(), %createNightMage(), %createRaisedByElves(), %createRaisedByOrcs(), %createRareHalfOgreBirth(), %createSentToCharmSchool(), %createShelteredChildhood(), %createSkyMage(), %createSuperModel(), %createSuppressedOrcishLooks(), %createTechnophobia(), %createTomboy(), %createToughHide(), %createWildHalfOgre()])
  responseApprenticedToABlacksmith = $ %containBackground([%createApprenticedToABlacksmith()])
  responseApprenticedToAShopkeeper = $ %containBackground([%createApprenticedToAShopkeeper()])
  responseBeatWithAnUglyStick = $ %containBackground([%createBeatWithAnUglyStick()])
  responseBornUnderASign = $ %containBackground([%createBornUnderASign()])
  responseChildOfAHero = $ %containBackground([%createChildOfAHero()])
  responseDarkSight = $ %containBackground([%createDarkSight()])
  responseEducator = $ %containBackground([%createEducator()])
  responseExtremePersonality = $ %containBackground([%createExtremePersonality()])
  responseHyperactive = $ %containBackground([%createHyperactive()])
  responseInheritance = $ %containBackground([%createInheritance()])
  responseMadDoctor = $ %containBackground([%createMadDoctor()])
  responseMiracleOperation = $ %containBackground([%createMiracleOperation()])
  responseNietzschePosterChild = $ %containBackground([%createNietzschePosterChild()])
  responseOnlyChild = $ %containBackground([%createOnlyChild()])
  responseProfessionalKnifeTosser = $ %containBackground([%createProfessionalKnifeTosser()])
  responseRaisedByMonks = $ %containBackground([%createRaisedByMonks()])
  responseRaisedBySnakeHandlers = $ %containBackground([%createRaisedBySnakeHandlers()])
  responseRaisedInThePits = $ %containBackground([%createRaisedInThePits()])
  responseRanAwayWithTheCircus = $ %containBackground([%createRanAwayWithTheCircus()])
  responseSickly = $ %containBackground([%createSickly()])
  responseSoldYourSoul = $ %containBackground([%createSoldYourSoul()])
  responseSpecialPerson = $ %containBackground([%createSpecialPerson()])
  responseTrollOffspring = $ %containBackground([%createTrollOffspring()])
  responseAfraidOfTheDark = $ %containBackground([%createAfraidOfTheDark()])
  responseAgoraphobic = $ %containBackground([%createAgoraphobic()])
  responseArmyTraining = $ %containBackground([%createArmyTraining()])
  responseArsonist = $ %containBackground([%createArsonist()])
  responseBandit = $ %containBackground([%createBandit()])
  responseBarbarian = $ %containBackground([%createBarbarian()])
  responseBookworm = $ %containBackground([%createBookworm()])
  responseBrideOfFrankenstein = $ %containBackground([%createBrideOfFrankenstein()])
  responseBully = $ %containBackground([%createBully()])
  responseCharlatansProtege = $ %containBackground([%createCharlatansProtege()])
  responseClanlessDwarf = $ %containBackground([%createClanlessDwarf()])
  responseDarkElfFollower = $ %containBackground([%createDarkElfFollower()])
  responseDayMage = $ %containBackground([%createDayMage()])
  responseDisenfranchisedGnome = $ %containBackground([%createDisenfranchisedGnome()])
  responseElvenBlood = $ %containBackground([%createElvenBlood()])
  responseEscapedLunatic = $ %containBackground([%createEscapedLunatic()])
  responseFactoryEscapee = $ %containBackground([%createFactoryEscapee()])
  responseFeralChild = $ %containBackground([%createFeralChild()])
  responseFoppishElf = $ %containBackground([%createFoppishElf()])
  responseFrankensteinMonster = $ %containBackground([%createFrankensteinMonster()])
  responseFreedBodyguard = $ %containBackground([%createFreedBodyguard()])
  responseHalflingOrphan = $ %containBackground([%createHalflingOrphan()])
  responseHydrophobic = $ %containBackground([%createHydrophobic()])
  responseIdiotSavant = $ %containBackground([%createIdiotSavant()])
  responseLadysMan = $ %containBackground([%createLadysMan()])
  responseMagickAllergy = $ %containBackground([%createMagickAllergy()])
  responseNatureMage = $ %containBackground([%createNatureMage()])
  responseNightMage = $ %containBackground([%createNightMage()])
  responseRaisedByElves = $ %containBackground([%createRaisedByElves()])
  responseRaisedByOrcs = $ %containBackground([%createRaisedByOrcs()])
  responseRareHalfOgreBirth = $ %containBackground([%createRareHalfOgreBirth()])
  responseSentToCharmSchool = $ %containBackground([%createSentToCharmSchool()])
  responseShelteredChildhood = $ %containBackground([%createShelteredChildhood()])
  responseSkyMage = $ %containBackground([%createSkyMage()])
  responseSuperModel = $ %containBackground([%createSuperModel()])
  responseSuppressedOrcishLooks = $ %containBackground([%createSuppressedOrcishLooks()])
  responseTechnophobia = $ %containBackground([%createTechnophobia()])
  responseTomboy = $ %containBackground([%createTomboy()])
  responseToughHide = $ %containBackground([%createToughHide()])
  responseWildHalfOgre = $ %containBackground([%createWildHalfOgre()])
  responseTech = $ %containRace([%createHealingSalve(), %createFatigueRestorer(), %createPoisonCure(), %createFatigueLimiter(), %createAccelerateHealing(), %createWonderDrug(), %createCureAll(), %createStrongPoison(), %createCharges(), %createAnimalScent(), %createCorrosiveAcid(), %createHallucinate(), %createParalyzer(), %createAnaesthisizer(), %createElectricLight(), %createChargedRing(), %createFlowSpectrometer(), %createShockingTraffic(), %createChapeuOfMagneticInversion(), %createHealingJacket(), %createTeslaRod(), %createMolotovCocktail(), %createFlashGrenade(), %createSmokeGrenade(), %createStunGrenade(), %createExplosiveGrenade(), %createFireObstruction(), %createDynamite(), %createHandCraftFlintlock(), %createFineRevolver(), %createRepeaterRifle(), %createHushedRevolver(), %createLookingGlassRifle(), %createHandCannon(), %createElephantGun(), %createSpikeTrap(), %createTrapSpringer(), %createAutoSkeletonKey(), %createEyeGear(), %createBearTrap(), %createClockworDecoy(), %createMechanizedArachnid(), %createPureOre(), %createBalancedSword(), %createFeatherWeightAxe(), %createDwarvenGauntlets(), %createHelmetOfVision(), %createFeatherWeightChainmail(), %createElitePlatemail(), %createElixirOfPersuasion(), %createElixirOfPhysicalProwess(), %createLiquidOfAwareness(), %createTonicOfIncreasedReflexes(), %createMindMarvel(), %createEnergizer(), %createRevitalizer()])
  responseHealingSalve = $ %containTech([%createHealingSalve()])
  responseFatigueRestorer = $ %containTech([%createFatigueRestorer()])
  responsePoisonCure = $ %containTech([%createPoisonCure()])
  responseFatigueLimiter = $ %containTech([%createFatigueLimiter()])
  responseAccelerateHealing = $ %containTech([%createAccelerateHealing()])
  responseWonderDrug = $ %containTech([%createWonderDrug()])
  responseCureAll = $ %containTech([%createCureAll()])
  responseStrongPoison = $ %containTech([%createStrongPoison()])
  responseCharges = $ %containTech([%createCharges()])
  responseAnimalScent = $ %containTech([%createAnimalScent()])
  responseCorrosiveAcid = $ %containTech([%createCorrosiveAcid()])
  responseHallucinate = $ %containTech([%createHallucinate()])
  responseParalyzer = $ %containTech([%createParalyzer()])
  responseAnaesthisizer = $ %containTech([%createAnaesthisizer()])
  responseChargedRing = $ %containTech([%createChargedRing()])
  responseFlowSpectrometer = $ %containTech([%createFlowSpectrometer()])
  responseShockingTraffic = $ %containTech([%createShockingTraffic()])
  responseChapeuOfMagneticInversion = $ %containTech([%createChapeuOfMagneticInversion()])
  responseHealingJacket = $ %containTech([%createHealingJacket()])
  responseTeslaRod = $ %containTech([%createTeslaRod()])
  responseMolotovCocktail = $ %containTech([%createMolotovCocktail()])
  responseFlashGrenade = $ %containTech([%createFlashGrenade()])
  responseSmokeGrenade = $ %containTech([%createSmokeGrenade()])
  responseStunGrenade = $ %containTech([%createStunGrenade()])
  responseExplosiveGrenade = $ %containTech([%createExplosiveGrenade()])
  responseFireObstruction = $ %containTech([%createFireObstruction()])
  responseDynamite = $ %containTech([%createDynamite()])
  responseHandCraftFlintlock = $ %containTech([%createHandCraftFlintlock()])
  responseFineRevolver = $ %containTech([%createFineRevolver()])
  responseRepeaterRifle = $ %containTech([%createRepeaterRifle()])
  responseHushedRevolver = $ %containTech([%createHushedRevolver()])
  responseLookingGlassRifle = $ %containTech([%createLookingGlassRifle()])
  responseHandCannon = $ %containTech([%createHandCannon()])
  responseElephantGun = $ %containTech([%createElephantGun()])
  responseSpikeTrap = $ %containTech([%createSpikeTrap()])
  responseTrapSpringer = $ %containTech([%createTrapSpringer()])
  responseAutoSkeletonKey = $ %containTech([%createAutoSkeletonKey()])
  responseEyeGear = $ %containTech([%createEyeGear()])
  responseBearTrap = $ %containTech([%createBearTrap()])
  responseClockworDecoy = $ %containTech([%createClockworDecoy()])
  responseMechanizedArachnid = $ %containTech([%createMechanizedArachnid()])
  responsePureOre = $ %containTech([%createPureOre()])
  responseBalancedSword = $ %containTech([%createBalancedSword()])
  responseFeatherWeightAxe = $ %containTech([%createFeatherWeightAxe()])
  responseDwarvenGauntlets = $ %containTech([%createDwarvenGauntlets()])
  responseHelmetOfVision = $ %containTech([%createHelmetOfVision()])
  responseFeatherWeightChainmail = $ %containTech([%createFeatherWeightChainmail()])
  responseElitePlatemail = $ %containTech([%createElitePlatemail()])
  responseElixirOfPersuasion = $ %containTech([%createHealingSalve()])
  responseElixirOfPhysicalProwess = $ %containTech([%createHealingSalve()])
  responseLiquidOfAwareness = $ %containTech([%createLiquidOfAwareness()])
  responseTonicOfIncreasedReflexes = $ %containTech([%createTonicOfIncreasedReflexes()])
  responseMindMarvel = $ %containTech([%createMindMarvel()])
  responseEnergizer = $ %containTech([%createEnergizer()])
  responseRevitalizer = $ %containTech([%createRevitalizer()])

let logger = getLogger("terel")

proc initHeaders: seq[(string, string)] =
  result.add ("Content-Type", "application/json")

when isMainModule:
  logger.log(lvlNotice, "appVersion:  " & appVersion)
  logger.log(lvlNotice, "appRevision: " & appRevision)
  logger.log(lvlNotice, "appDate:     " & appDate)

  template handlerTest(): untyped =
    resp(Http200, initHeaders(), """{ "msg": "Hello, World!" }""")

  template handlerRace() =
    resp(Http200, initHeaders(), responseRaces)

  template handlerRaceGnome() =
    resp(Http200, initHeaders(), responseGnome)

  template handlerRaceDwarf() =
    resp(Http200, initHeaders(), responseDwarf)

  template handlerRaceElf() =
    resp(Http200, initHeaders(), responseElf)

  template handlerRaceHuman() =
    resp(Http200, initHeaders(), responseHuman)

  template handlerRaceHalfling() =
    resp(Http200, initHeaders(), responseHalfling)

  template handlerRaceHalfOgre() =
    resp(Http200, initHeaders(), responseHalfOgre)

  template handlerRaceHalfOrc() =
    resp(Http200, initHeaders(), responseHalfOrc)

  template handlerRaceHalfElf() =
    resp(Http200, initHeaders(), responseHalfElf)

  template handlerBackground() =
    resp(Http200, initHeaders(), responseBackgrounds)

  template handlerBackgroundApprenticedToABlacksmith() =
    resp(Http200, initHeaders(), responseApprenticedToABlacksmith)

  template handlerBackgroundApprenticedToAShopkeeper() =
    resp(Http200, initHeaders(), responseApprenticedToAShopkeeper)

  template handlerBackgroundBeatWithAnUglyStick() =
    resp(Http200, initHeaders(), responseBeatWithAnUglyStick)

  template handlerBackgroundBornUnderASign() =
    resp(Http200, initHeaders(), responseBornUnderASign)

  template handlerBackgroundChildOfAHero() =
    resp(Http200, initHeaders(), responseChildOfAHero)

  template handlerBackgroundDarkSight() =
    resp(Http200, initHeaders(), responseDarkSight)

  template handlerBackgroundEducator() =
    resp(Http200, initHeaders(), responseEducator)

  template handlerBackgroundExtremePersonality() =
    resp(Http200, initHeaders(), responseExtremePersonality)

  template handlerBackgroundHyperactive() =
    resp(Http200, initHeaders(), responseHyperactive)

  template handlerBackgroundInheritance() =
    resp(Http200, initHeaders(), responseInheritance)

  template handlerBackgroundMadDoctor() =
    resp(Http200, initHeaders(), responseMadDoctor)

  template handlerBackgroundMiracleOperation() =
    resp(Http200, initHeaders(), responseMiracleOperation)

  template handlerBackgroundNietzschePosterChild() =
    resp(Http200, initHeaders(), responseNietzschePosterChild)

  template handlerBackgroundOnlyChild() =
    resp(Http200, initHeaders(), responseOnlyChild)

  template handlerBackgroundProfessionalKnifeTosser() =
    resp(Http200, initHeaders(), responseProfessionalKnifeTosser)

  template handlerBackgroundRaisedByMonks() =
    resp(Http200, initHeaders(), responseRaisedByMonks)

  template handlerBackgroundRaisedBySnakeHandlers() =
    resp(Http200, initHeaders(), responseRaisedBySnakeHandlers)

  template handlerBackgroundRaisedInThePits() =
    resp(Http200, initHeaders(), responseRaisedInThePits)

  template handlerBackgroundRanAwayWithTheCircus() =
    resp(Http200, initHeaders(), responseRanAwayWithTheCircus)

  template handlerBackgroundSickly() =
    resp(Http200, initHeaders(), responseSickly)

  template handlerBackgroundSoldYourSoul() =
    resp(Http200, initHeaders(), responseSoldYourSoul)

  template handlerBackgroundSpecialPerson() =
    resp(Http200, initHeaders(), responseSpecialPerson)

  template handlerBackgroundTrollOffspring() =
    resp(Http200, initHeaders(), responseTrollOffspring)

  template handlerBackgroundAfraidOfTheDark() =
    resp(Http200, initHeaders(), responseAfraidOfTheDark)

  template handlerBackgroundAgoraphobic() =
    resp(Http200, initHeaders(), responseAgoraphobic)

  template handlerBackgroundArmyTraining() =
    resp(Http200, initHeaders(), responseArmyTraining)

  template handlerBackgroundArsonist() =
    resp(Http200, initHeaders(), responseArsonist)

  template handlerBackgroundBandit() =
    resp(Http200, initHeaders(), responseBandit)

  template handlerBackgroundBarbarian() =
    resp(Http200, initHeaders(), responseBarbarian)

  template handlerBackgroundBookworm() =
    resp(Http200, initHeaders(), responseBookworm)

  template handlerBackgroundBrideOfFrankenstein() =
    resp(Http200, initHeaders(), responseBrideOfFrankenstein)

  template handlerBackgroundBully() =
    resp(Http200, initHeaders(), responseBully)

  template handlerBackgroundCharlatansProtege() =
    resp(Http200, initHeaders(), responseCharlatansProtege)

  template handlerBackgroundClanlessDwarf() =
    resp(Http200, initHeaders(), responseClanlessDwarf)

  template handlerBackgroundDarkElfFollower() =
    resp(Http200, initHeaders(), responseDarkElfFollower)

  template handlerBackgroundDayMage() =
    resp(Http200, initHeaders(), responseDayMage)

  template handlerBackgroundDisenfranchisedGnome() =
    resp(Http200, initHeaders(), responseDisenfranchisedGnome)

  template handlerBackgroundElvenBlood() =
    resp(Http200, initHeaders(), responseElvenBlood)

  template handlerBackgroundEscapedLunatic() =
    resp(Http200, initHeaders(), responseEscapedLunatic)

  template handlerBackgroundFactoryEscapee() =
    resp(Http200, initHeaders(), responseFactoryEscapee)

  template handlerBackgroundFeralChild() =
    resp(Http200, initHeaders(), responseFeralChild)

  template handlerBackgroundFoppishElf() =
    resp(Http200, initHeaders(), responseFoppishElf)

  template handlerBackgroundFrankensteinMonster() =
    resp(Http200, initHeaders(), responseFrankensteinMonster)

  template handlerBackgroundFreedBodyguard() =
    resp(Http200, initHeaders(), responseFreedBodyguard)

  template handlerBackgroundHalflingOrphan() =
    resp(Http200, initHeaders(), responseHalflingOrphan)

  template handlerBackgroundHydrophobic() =
    resp(Http200, initHeaders(), responseHydrophobic)

  template handlerBackgroundIdiotSavant() =
    resp(Http200, initHeaders(), responseIdiotSavant)

  template handlerBackgroundLadysMan() =
    resp(Http200, initHeaders(), responseLadysMan)

  template handlerBackgroundMagickAllergy() =
    resp(Http200, initHeaders(), responseMagickAllergy)

  template handlerBackgroundNatureMage() =
    resp(Http200, initHeaders(), responseNatureMage)

  template handlerBackgroundNightMage() =
    resp(Http200, initHeaders(), responseNightMage)

  template handlerBackgroundRaisedByElves() =
    resp(Http200, initHeaders(), responseRaisedByElves)

  template handlerBackgroundRaisedByOrcs() =
    resp(Http200, initHeaders(), responseRaisedByOrcs)

  template handlerBackgroundRareHalfOgreBirth() =
    resp(Http200, initHeaders(), responseRareHalfOgreBirth)

  template handlerBackgroundSentToCharmSchool() =
    resp(Http200, initHeaders(), responseSentToCharmSchool)

  template handlerBackgroundShelteredChildhood() =
    resp(Http200, initHeaders(), responseShelteredChildhood)

  template handlerBackgroundSkyMage() =
    resp(Http200, initHeaders(), responseSkyMage)

  template handlerBackgroundSuperModel() =
    resp(Http200, initHeaders(), responseSuperModel)

  template handlerBackgroundSuppressedOrcishLooks() =
    resp(Http200, initHeaders(), responseSuppressedOrcishLooks)

  template handlerBackgroundTechnophobia() =
    resp(Http200, initHeaders(), responseTechnophobia)

  template handlerBackgroundTomboy() =
    resp(Http200, initHeaders(), responseTomboy)

  template handlerBackgroundToughHide() =
    resp(Http200, initHeaders(), responseToughHide)

  template handlerBackgroundWildHalfOgre() =
    resp(Http200, initHeaders(), responseWildHalfOgre)

  template handlerTech() =
    resp(Http200, initHeaders(), responseTech)

  template handlerTechHealingSalve() =
    resp(Http200, initHeaders(), responseHealingSalve)

  template handlerTechFatigueRestorer() =
    resp(Http200, initHeaders(), responseFatigueRestorer)

  template handlerTechPoisonCure() =
    resp(Http200, initHeaders(), responsePoisonCure)

  template handlerTechFatigueLimiter() =
    resp(Http200, initHeaders(), responseFatigueLimiter)

  template handlerTechAccelerateHealing() =
    resp(Http200, initHeaders(), responseAccelerateHealing)

  template handlerTechWonderDrug() =
    resp(Http200, initHeaders(), responseWonderDrug)

  template handlerTechCureAll() =
    resp(Http200, initHeaders(), responseCureAll)

  template handlerTechStrongPoison() =
    resp(Http200, initHeaders(), responseStrongPoison)

  template handlerTechCharges() =
    resp(Http200, initHeaders(), responseCharges)

  template handlerTechAnimalScent() =
    resp(Http200, initHeaders(), responseAnimalScent)

  template handlerTechCorrosiveAcid() =
    resp(Http200, initHeaders(), responseCorrosiveAcid)

  template handlerTechHallucinate() =
    resp(Http200, initHeaders(), responseHallucinate)

  template handlerTechParalyzer() =
    resp(Http200, initHeaders(), responseParalyzer)

  template handlerTechAnaesthisizer() =
    resp(Http200, initHeaders(), responseAnaesthisizer)

  template handlerTechChargedRing() =
    resp(Http200, initHeaders(), responseChargedRing)

  template handlerTechFlowSpectrometer() =
    resp(Http200, initHeaders(), responseFlowSpectrometer)

  template handlerTechShockingTraffic() =
    resp(Http200, initHeaders(), responseShockingTraffic)

  template handlerTechChapeuOfMagneticInversion() =
    resp(Http200, initHeaders(), responseChapeuOfMagneticInversion)

  template handlerTechHealingJacket() =
    resp(Http200, initHeaders(), responseHealingJacket)

  template handlerTechTeslaRod() =
    resp(Http200, initHeaders(), responseTeslaRod)

  template handlerTechMolotovCocktail() =
    resp(Http200, initHeaders(), responseMolotovCocktail)

  template handlerTechFlashGrenade() =
    resp(Http200, initHeaders(), responseFlashGrenade)

  template handlerTechSmokeGrenade() =
    resp(Http200, initHeaders(), responseSmokeGrenade)

  template handlerTechStunGrenade() =
    resp(Http200, initHeaders(), responseStunGrenade)

  template handlerTechExplosiveGrenade() =
    resp(Http200, initHeaders(), responseExplosiveGrenade)

  template handlerTechFireObstruction() =
    resp(Http200, initHeaders(), responseFireObstruction)

  template handlerTechDynamite() =
    resp(Http200, initHeaders(), responseDynamite)

  template handlerTechHandCraftFlintlock() =
    resp(Http200, initHeaders(), responseHandCraftFlintlock)

  template handlerTechFineRevolver() =
    resp(Http200, initHeaders(), responseFineRevolver)

  template handlerTechRepeaterRifle() =
    resp(Http200, initHeaders(), responseRepeaterRifle)

  template handlerTechHushedRevolver() =
    resp(Http200, initHeaders(), responseHushedRevolver)

  template handlerTechLookingGlassRifle() =
    resp(Http200, initHeaders(), responseLookingGlassRifle)

  template handlerTechHandCannon() =
    resp(Http200, initHeaders(), responseHandCannon)

  template handlerTechElephantGun() =
    resp(Http200, initHeaders(), responseElephantGun)

  template handlerTechSpikeTrap() =
    resp(Http200, initHeaders(), responseSpikeTrap)

  template handlerTechTrapSpringer() =
    resp(Http200, initHeaders(), responseTrapSpringer)

  template handlerTechAutoSkeletonKey() =
    resp(Http200, initHeaders(), responseAutoSkeletonKey)

  template handlerTechEyeGear() =
    resp(Http200, initHeaders(), responseEyeGear)

  template handlerTechBearTrap() =
    resp(Http200, initHeaders(), responseBearTrap)

  template handlerTechClockworDecoy() =
    resp(Http200, initHeaders(), responseClockworDecoy)

  template handlerTechMechanizedArachnid() =
    resp(Http200, initHeaders(), responseMechanizedArachnid)

  template handlerTechPureOre() =
    resp(Http200, initHeaders(), responsePureOre)

  template handlerTechBalancedSword() =
    resp(Http200, initHeaders(), responseBalancedSword)

  template handlerTechFeatherWeightAxe() =
    resp(Http200, initHeaders(), responseFeatherWeightAxe)

  template handlerTechDwarvenGauntlets() =
    resp(Http200, initHeaders(), responseDwarvenGauntlets)

  template handlerTechHelmetOfVision() =
    resp(Http200, initHeaders(), responseHelmetOfVision)

  template handlerTechFeatherWeightChainmail() =
    resp(Http200, initHeaders(), responseFeatherWeightChainmail)

  template handlerTechElitePlatemail() =
    resp(Http200, initHeaders(), responseElitePlatemail)

  template handlerTechElixirOfPersuasion() =
    resp(Http200, initHeaders(), responseElixirOfPersuasion)

  template handlerTechElixirOfPhysicalProwess() =
    resp(Http200, initHeaders(), responseElixirOfPhysicalProwess)

  template handlerTechLiquidOfAwareness() =
    resp(Http200, initHeaders(), responseLiquidOfAwareness)

  template handlerTechTonicOfIncreasedReflexes() =
    resp(Http200, initHeaders(), responseTonicOfIncreasedReflexes)

  template handlerTechMindMarvel() =
    resp(Http200, initHeaders(), responseMindMarvel)

  template handlerTechEnergizer() =
    resp(Http200, initHeaders(), responseEnergizer)

  template handlerTechRevitalizer() =
    resp(Http200, initHeaders(), responseRevitalizer)

  settings:
    port = serverPort.Port
    appName = ""
    bindAddr = "0.0.0.0"

  routes:
    get "/test":
      handlerTest()
    get "/race":
      handlerRace()
    get "/race/gnome":
      handlerRaceGnome()
    get "/race/dwarf":
      handlerRaceDwarf()
    get "/race/elf":
      handlerRaceElf()
    get "/race/human":
      handlerRaceHuman()
    get "/race/halfling":
      handlerRaceHalfling()
    get "/race/halfogre":
      handlerRaceHalfOgre()
    get "/race/halforc":
      handlerRaceHalfOrc()
    get "/race/halfelf":
      handlerRaceHalfElf()
    get "/background":
      handlerBackground()
    get "/background/ApprenticedToABlacksmith":
      handlerBackgroundApprenticedToABlacksmith()
    get "/background/ApprenticedToAShopkeeper":
      handlerBackgroundApprenticedToAShopkeeper()
    get "/background/BeatWithAnUglyStick":
      handlerBackgroundBeatWithAnUglyStick()
    get "/background/BornUnderASign":
      handlerBackgroundBornUnderASign()
    get "/background/ChildOfAHero":
      handlerBackgroundChildOfAHero()
    get "/background/DarkSight":
      handlerBackgroundDarkSight()
    get "/background/Educator":
      handlerBackgroundEducator()
    get "/background/ExtremePersonality":
      handlerBackgroundExtremePersonality()
    get "/background/Hyperactive":
      handlerBackgroundHyperactive()
    get "/background/Inheritance":
      handlerBackgroundInheritance()
    get "/background/MadDoctor":
      handlerBackgroundMadDoctor()
    get "/background/MiracleOperation":
      handlerBackgroundMiracleOperation()
    get "/background/NietzschePosterChild":
      handlerBackgroundNietzschePosterChild()
    get "/background/OnlyChild":
      handlerBackgroundOnlyChild()
    get "/background/ProfessionalKnifeTosser":
      handlerBackgroundProfessionalKnifeTosser()
    get "/background/RaisedByMonks":
      handlerBackgroundRaisedByMonks()
    get "/background/RaisedBySnakeHandlers":
      handlerBackgroundRaisedBySnakeHandlers()
    get "/background/RaisedInThePits":
      handlerBackgroundRaisedInThePits()
    get "/background/RanAwayWithTheCircus":
      handlerBackgroundRanAwayWithTheCircus()
    get "/background/Sickly":
      handlerBackgroundSickly()
    get "/background/SoldYourSoul":
      handlerBackgroundSoldYourSoul()
    get "/background/SpecialPerson":
      handlerBackgroundSpecialPerson()
    get "/background/TrollOffspring":
      handlerBackgroundTrollOffspring()
    get "/background/AfraidOfTheDark":
      handlerBackgroundAfraidOfTheDark()
    get "/background/Agoraphobic":
      handlerBackgroundAgoraphobic()
    get "/background/ArmyTraining":
      handlerBackgroundArmyTraining()
    get "/background/Arsonist":
      handlerBackgroundArsonist()
    get "/background/Bandit":
      handlerBackgroundBandit()
    get "/background/Barbarian":
      handlerBackgroundBarbarian()
    get "/background/Bookworm":
      handlerBackgroundBookworm()
    get "/background/BrideOfFrankenstein":
      handlerBackgroundBrideOfFrankenstein()
    get "/background/Bully":
      handlerBackgroundBully()
    get "/background/CharlatansProtege":
      handlerBackgroundCharlatansProtege()
    get "/background/ClanlessDwarf":
      handlerBackgroundClanlessDwarf()
    get "/background/DarkElfFollower":
      handlerBackgroundDarkElfFollower()
    get "/background/DayMage":
      handlerBackgroundDayMage()
    get "/background/DisenfranchisedGnome":
      handlerBackgroundDisenfranchisedGnome()
    get "/background/ElvenBlood":
      handlerBackgroundElvenBlood()
    get "/background/EscapedLunatic":
      handlerBackgroundEscapedLunatic()
    get "/background/FactoryEscapee":
      handlerBackgroundFactoryEscapee()
    get "/background/FeralChild":
      handlerBackgroundFeralChild()
    get "/background/FoppishElf":
      handlerBackgroundFoppishElf()
    get "/background/FrankensteinMonster":
      handlerBackgroundFrankensteinMonster()
    get "/background/FreedBodyguard":
      handlerBackgroundFreedBodyguard()
    get "/background/HalflingOrphan":
      handlerBackgroundHalflingOrphan()
    get "/background/Hydrophobic":
      handlerBackgroundHydrophobic()
    get "/background/IdiotSavant":
      handlerBackgroundIdiotSavant()
    get "/background/LadysMan":
      handlerBackgroundLadysMan()
    get "/background/MagickAllergy":
      handlerBackgroundMagickAllergy()
    get "/background/NatureMage":
      handlerBackgroundNatureMage()
    get "/background/NightMage":
      handlerBackgroundNightMage()
    get "/background/RaisedByElves":
      handlerBackgroundRaisedByElves()
    get "/background/RaisedByOrcs":
      handlerBackgroundRaisedByOrcs()
    get "/background/RareHalfOgreBirth":
      handlerBackgroundRareHalfOgreBirth()
    get "/background/SentToCharmSchool":
      handlerBackgroundSentToCharmSchool()
    get "/background/ShelteredChildhood":
      handlerBackgroundShelteredChildhood()
    get "/background/SkyMage":
      handlerBackgroundSkyMage()
    get "/background/SuperModel":
      handlerBackgroundSuperModel()
    get "/background/SuppressedOrcishLooks":
      handlerBackgroundSuppressedOrcishLooks()
    get "/background/Technophobia":
      handlerBackgroundTechnophobia()
    get "/background/Tomboy":
      handlerBackgroundTomboy()
    get "/background/ToughHide":
      handlerBackgroundToughHide()
    get "/background/WildHalfOgre":
      handlerBackgroundWildHalfOgre()
    get "/tech":
      handlerTech()
    get "/tech/HealingSalve":
      handlerTechHealingSalve()
    get "/tech/FatigueRestorer":
      handlerTechFatigueRestorer()
    get "/tech/PoisonCure":
      handlerTechPoisonCure()
    get "/tech/FatigueLimiter":
      handlerTechFatigueLimiter()
    get "/tech/AccelerateHealing":
      handlerTechAccelerateHealing()
    get "/tech/WonderDrug":
      handlerTechWonderDrug()
    get "/tech/CureAll":
      handlerTechCureAll()
    get "/tech/StrongPoison":
      handlerTechStrongPoison()
    get "/tech/Charges":
      handlerTechCharges()
    get "/tech/AnimalScent":
      handlerTechAnimalScent()
    get "/tech/CorrosiveAcid":
      handlerTechCorrosiveAcid()
    get "/tech/Hallucinate":
      handlerTechHallucinate()
    get "/tech/Paralyzer":
      handlerTechParalyzer()
    get "/tech/Anaesthisizer":
      handlerTechAnaesthisizer()
    get "/tech/ChargedRing":
      handlerTechChargedRing()
    get "/tech/FlowSpectrometer":
      handlerTechFlowSpectrometer()
    get "/tech/ShockingTraffic":
      handlerTechShockingTraffic()
    get "/tech/ChapeuOfMagneticInversion":
      handlerTechChapeuOfMagneticInversion()
    get "/tech/HealingJacket":
      handlerTechHealingJacket()
    get "/tech/TeslaRod":
      handlerTechTeslaRod()
    get "/tech/MolotovCocktail":
      handlerTechMolotovCocktail()
    get "/tech/FlashGrenade":
      handlerTechFlashGrenade()
    get "/tech/SmokeGrenade":
      handlerTechSmokeGrenade()
    get "/tech/StunGrenade":
      handlerTechStunGrenade()
    get "/tech/ExplosiveGrenade":
      handlerTechExplosiveGrenade()
    get "/tech/FireObstruction":
      handlerTechFireObstruction()
    get "/tech/Dynamite":
      handlerTechDynamite()
    get "/tech/HandCraftFlintlock":
      handlerTechHandCraftFlintlock()
    get "/tech/FineRevolver":
      handlerTechFineRevolver()
    get "/tech/RepeaterRifle":
      handlerTechRepeaterRifle()
    get "/tech/HushedRevolver":
      handlerTechHushedRevolver()
    get "/tech/LookingGlassRifle":
      handlerTechLookingGlassRifle()
    get "/tech/HandCannon":
      handlerTechHandCannon()
    get "/tech/ElephantGun":
      handlerTechElephantGun()
    get "/tech/SpikeTrap":
      handlerTechSpikeTrap()
    get "/tech/TrapSpringer":
      handlerTechTrapSpringer()
    get "/tech/AutoSkeletonKey":
      handlerTechAutoSkeletonKey()
    get "/tech/EyeGear":
      handlerTechEyeGear()
    get "/tech/BearTrap":
      handlerTechBearTrap()
    get "/tech/ClockworDecoy":
      handlerTechClockworDecoy()
    get "/tech/MechanizedArachnid":
      handlerTechMechanizedArachnid()
    get "/tech/PureOre":
      handlerTechPureOre()
    get "/tech/BalancedSword":
      handlerTechBalancedSword()
    get "/tech/FeatherWeightAxe":
      handlerTechFeatherWeightAxe()
    get "/tech/DwarvenGauntlets":
      handlerTechDwarvenGauntlets()
    get "/tech/HelmetOfVision":
      handlerTechHelmetOfVision()
    get "/tech/FeatherWeightChainmail":
      handlerTechFeatherWeightChainmail()
    get "/tech/ElitePlatemail":
      handlerTechElitePlatemail()
    get "/tech/ElixirOfPersuasion":
      handlerTechElixirOfPersuasion()
    get "/tech/ElixirOfPhysicalProwess":
      handlerTechElixirOfPhysicalProwess()
    get "/tech/LiquidOfAwareness":
      handlerTechLiquidOfAwareness()
    get "/tech/TonicOfIncreasedReflexes":
      handlerTechTonicOfIncreasedReflexes()
    get "/tech/MindMarvel":
      handlerTechMindMarvel()
    get "/tech/Energizer":
      handlerTechEnergizer()
    get "/tech/Revitalizer":
      handlerTechRevitalizer()