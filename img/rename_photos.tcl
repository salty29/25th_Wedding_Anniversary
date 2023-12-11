
set fileList [glob -nocomplain -- *.jpg *.JPG]

set number 176
foreach fileName $fileList {
  set name [file rootname $fileName]
  set ext [file extension $fileName]
  set ext [string tolower $ext]
  puts "Processing $name$ext"
  file rename -force "$fileName" "$number$ext"
  incr number
}

set fileList [glob -nocomplain -- *.png *.PNG]

foreach fileName $fileList {
  set name [file rootname $fileName]
  set ext [file extension $fileName]
  set ext [string tolower $ext]
  puts "Processing $name$ext"
  file rename -force "$fileName" "$number$ext"
  incr number
}

set fileList [glob -nocomplain -- *.JPEG]

foreach fileName $fileList {
  set name [file rootname $fileName]
  set ext [file extension $fileName]
  set ext [string tolower $ext]
  puts "Processing $name$ext"
  file rename -force "$fileName" "$number$ext"
  incr number
}

set fileList [glob -nocomplain -- *.HEIC]

foreach fileName $fileList {
  set name [file rootname $fileName]
  set ext [file extension $fileName]
  set ext [string tolower $ext]
  puts "Processing $name$ext"
  file rename -force "$fileName" "$number$ext"
  incr number
}


puts "Processed $number photos"