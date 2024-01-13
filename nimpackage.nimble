# Package

version       = "0.1.0"
author        = "Akito <the@akito.ooo>"
description   = "An awesome Nimble package."
license       = "GPL-3.0-or-later"
srcDir        = "src"
bin           = @["nimpackage"]
skipFiles     = @["README.md"]
skipExt       = @["nim"]
backend       = "c"


# Dependencies

requires "nim             >= 2.0.0" ## https://github.com/nim-lang/Nim
requires "timestamp       >= 0.4.2" ## https://github.com/jackhftang/timestamp.nim
requires "zero_functional >= 1.3.0" ## https://github.com/zero-functional/zero-functional


# Tasks
import os, strformat, strutils

const defaultVersion = "unreleased"

let
  buildParams   = if paramCount() > 8: commandLineParams()[8..^1] else: @[]    ## Actual arguments passed to task. Previous arguments are only for compiler internal use.
  buildVersion  = if buildParams.len > 0: buildParams[^1] else: defaultVersion ## Semver compliant App Version
  buildRevision = gorge """git log -1 --format="%H""""                         ## Build revision, i.e. Git Commit Hash
  buildDate     = gorge """date --iso-8601=seconds"""                          ## Build date; Example: 2023-12-03T16:52:12+01:00


task configure, "Configure project. Run whenever you continue contributing to this project.":
  exec "git fetch --all"
  exec "nimble check"
  exec "nimble --silent refresh"
  exec "nimble install --accept --depsOnly --verbose"
  exec "git status"
task fbuild, "Build project.":
  exec &"""nim c \
            --define:appVersion:"{buildVersion}" \
            --define:appRevision:"{buildRevision}" \
            --define:appDate:"{buildDate}" \
            --define:danger \
            --opt:speed \
            --excessiveStackTrace:off \
            --out:nimpackage \
            src/nimpackage && \
          strip nimpackage \
            --strip-all \
            --remove-section=.comment \
            --remove-section=.note.gnu.gold-version \
            --remove-section=.note \
            --remove-section=.note.gnu.build-id \
            --remove-section=.note.ABI-tag
       """
task dbuild, "Debug Build project.":
  exec &"""nim c \
            --define:appVersion:"{buildVersion}" \
            --define:appRevision:"{buildRevision}" \
            --define:appDate:"{buildDate}" \
            --define:debug:true \
            --debugger:native \
            --debuginfo:on \
            --opt:none \
            --excessiveStackTrace:off \
            --out:nimpackage_debug \
            src/nimpackage
       """
task docker_build_prod, "Build Production Docker.":
  exec &"""nim c \
            --define:appVersion:"{buildVersion}" \
            --define:appRevision:"{buildRevision}" \
            --define:appDate:"{buildDate}" \
            --define:configPath:/data \
            --define:logDirPath:/data/logs \
            --define:danger \
            --opt:speed \
            --excessiveStackTrace:off \
            --out:app \
            src/nimpackage && \
          strip app \
            --strip-all \
            --remove-section=.comment \
            --remove-section=.note.gnu.gold-version \
            --remove-section=.note \
            --remove-section=.note.gnu.build-id \
            --remove-section=.note.ABI-tag
       """
task docker_build_debug, "Build Debug Docker.":
  exec &"""nim c \
            --define:appVersion:"{buildVersion}" \
            --define:appRevision:"{buildRevision}" \
            --define:appDate:"{buildDate}" \
            --define:debug:true \
            --define:configPath:/data \
            --define:logDirPath:/data/logs \
            --debugger:native \
            --debuginfo:on \
            --opt:none \
            --excessiveStackTrace:off \
            --out:app \
            src/nimpackage
       """
