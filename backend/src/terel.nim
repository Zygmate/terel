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
    #zero_functional
    mummy,
    mummy/routers
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

template initHeaders =
  var headers {.inject.}: HttpHeaders
  headers["Content-Type"] = "application/json"

when isMainModule:
  logger.log(lvlNotice, "appVersion:  " & appVersion)
  logger.log(lvlNotice, "appRevision: " & appRevision)
  logger.log(lvlNotice, "appDate:     " & appDate)

  proc handlerTest(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, """{ "msg": "Hello, World!" }""")

  proc handlerRace(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseRaces)

  proc handlerRaceGnome(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseGnome)

  proc handlerRaceDwarf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseDwarf)

  proc handlerRaceElf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseElf)

  proc handlerRaceHuman(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseHuman)

  proc handlerRaceHalfling(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseHalfling)

  proc handlerRaceHalfOgre(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseHalfOgre)

  proc handlerRaceHalfOrc(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseHalfOrc)

  proc handlerRaceHalfElf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, responseHalfElf)

  var router: Router
  router.get("/test", handlerTest)
  router.get("/race", handlerRace)
  router.get("/race/gnome", handlerRaceGnome)
  router.get("/race/dwarf", handlerRaceDwarf)
  router.get("/race/elf", handlerRaceElf)
  router.get("/race/human", handlerRaceHuman)
  router.get("/race/halfling", handlerRaceHalfling)
  router.get("/race/halfogre", handlerRaceHalfOgre)
  router.get("/race/halforc", handlerRaceHalfOrc)
  router.get("/race/halfelf", handlerRaceHalfElf)

  let server = newServer(router)
  logger.log lvlNotice, "Serving on http://127.0.0.1:" & $serverPort
  server.serve(serverPort.Port, address = "0.0.0.0")
