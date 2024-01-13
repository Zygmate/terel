from timestamp import initTimestamp, `$`

const
  debug              * {.booldefine.} = false
  lineEnd            * {.strdefine.}  = "\p"
  defaultDateFormat  * {.strdefine.}  = "yyyy-MM-dd'T'HH:mm:ss'.'fffffffff'Z'"
  dateFormatFileName * {.strdefine.}  = "yyyy-MM-dd'T'HH-mm-ss"
  dateFormatReadable * {.strdefine.}  = "yyyy/MM/dd HH:mm:ss"
  appName            * {.strdefine.}  = "terel"
  appVersion         * {.strdefine.}  = "0.1.0"
  appRevision        * {.strdefine.}  = appVersion
  appDate            * {.strdefine.}  = appVersion
  configNameJSON     * {.strdefine.}  = appName & ".json"
  configNameYAML     * {.strdefine.}  = appName & ".yaml"
  configPath         * {.strdefine.}  = ""
  configIndentation  * {.intdefine.}  = 2
  sourcepage         * {.strdefine.}  = "https://github.com/Zygmate/terel"
  homepage           * {.strdefine.}  = sourcepage
  wikipage           * {.strdefine.}  = sourcepage
  rootTimestamp      *                = initTimestamp(2001, 11, 22) ## Zero raises a parsing exception, so a random later date is used.
  rootTimestampStr   *                = $rootTimestamp