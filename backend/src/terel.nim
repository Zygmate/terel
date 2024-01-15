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
