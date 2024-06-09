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
  httpCodeOK = 200
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
