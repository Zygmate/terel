from std/json import JsonNode

type
  ResponseStatus* = enum
    OK, ERROR
  PayloadContainer* = object
    id: int
    status: ResponseStatus
    msg: string
    data: seq[JsonNode]