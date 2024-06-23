# Package

version       = "0.1.0"
author        = "Akito <the@akito.ooo>"
description   = "Ter'El - Arcanum Character Builder."
license       = "GPL-3.0-or-later"
srcDir        = "src"
bin           = @["terel"]
skipFiles     = @["README.md"]
skipExt       = @["nim"]
backend       = "c"


# Dependencies

requires "nim             >= 2.0.0" ## https://github.com/nim-lang/Nim
requires "timestamp       >= 0.4.2" ## https://github.com/jackhftang/timestamp.nim
requires "zero_functional >= 1.3.0" ## https://github.com/zero-functional/zero-functional
requires "jesterfork      >= 1.0.0" ## https://github.com/ThomasTJdev/jester_fork
requires "anycase         >= 0.3.0" ## https://github.com/epszaw/anycase