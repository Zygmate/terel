##[
  Master Module
]##

import
  nimpackage/[
    meta,
    logg,
    #utils,
    #configurator,
    #database
  ],
  nimpackage/model/[
    #configuration,
  ],
  std/[
    segfaults,
  ],
  pkg/[
    #zero_functional
  ]

let logger = getLogger("nimpackage")

when isMainModule:
  logger.log(lvlNotice, "appVersion:  " & appVersion)
  logger.log(lvlNotice, "appRevision: " & appRevision)
  logger.log(lvlNotice, "appDate:     " & appDate)
