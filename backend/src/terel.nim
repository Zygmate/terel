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

let logger = getLogger("terel")

when isMainModule:
  logger.log(lvlNotice, "appVersion:  " & appVersion)
  logger.log(lvlNotice, "appRevision: " & appRevision)
  logger.log(lvlNotice, "appDate:     " & appDate)

  proc indexHandler(request: Request) =
    var headers: HttpHeaders
    headers["Content-Type"] = "application/json"
    request.respond(200, headers, """{ "msg": "Hello, World!" }""")

  var router: Router
  router.get("/", indexHandler)

  let server = newServer(router)
  echo "Serving on http://localhost:8080"
  server.serve(Port(8080))
