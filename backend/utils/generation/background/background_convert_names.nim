import
  std/[
    tables,
    strutils,
    os
  ]

for line in "background_convert_names.txt".lines:
  let split = line.split("=")
  echo '"' & split[0] & '"' & ": " & '"' & split[1] & '"' & ','