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
    background
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

# let
#   gnome = %createGnome()
#   dwarf = %createDwarf()
#   elf = %createGnome()
#   human = %createHuman()
#   halfling = %createHalfling()
#   halfOgre = %createHalfOgre()
#   halfOrc = %createHalfOrc()
#   halfElf = %createHalfElf()

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

  settings:
    port = Port(serverPort)
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