from std/json import JsonNode

type
  ResponseStatus* = enum
    OK, ERROR
  ResponseType* = enum
    Race, Background, Spell, Tech
  PayloadContainer* = object
    id*: int
    status*: ResponseStatus
    msg*: string
    `type`*: ResponseType
    data*: seq[JsonNode]

func containError*(races: openArray[JsonNode], msg = "Error occurred."): PayloadContainer =
  PayloadContainer(
    id: -1,
    status: ERROR,
    msg: msg,
    `type`: Race,
    data: @[]
  )

func containRace*(races: openArray[JsonNode]): PayloadContainer =
  PayloadContainer(
    id: -1,
    status: OK,
    msg: "",
    `type`: Race,
    data: @races
  )