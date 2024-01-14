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
  std/[
    segfaults,
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

  proc testConnection(request: Request) =
    initHeaders
    request.respond(httpCodeOK, headers, """{ "msg": "Hello, World!" }""")

  var router: Router
  router.get("/test", testConnection)

  let server = newServer(router)
  logger.log lvlInfo, "Serving on http://127.0.0.1:" & $serverPort
  server.serve(serverPort.Port)
