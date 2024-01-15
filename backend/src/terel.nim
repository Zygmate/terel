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
    request.respond(httpCodeOK, headers, """{ "msg": "Hello, World!" }""")

  proc handlerRaceGnome(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createGnome())

  proc handlerRaceDwarf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createDwarf())

  proc handlerRaceElf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createElf())

  proc handlerRaceHuman(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createHuman())

  proc handlerRaceHalfling(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createHalfling())

  proc handlerRaceHalfOgre(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createHalfOgre())

  proc handlerRaceHalfOrc(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createHalfOrc())

  proc handlerRaceHalfElf(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, $ %createHalfElf())

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
  server.serve(serverPort.Port)
