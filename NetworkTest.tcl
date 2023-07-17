set checkFileHandle [open "checkad.txt" r]
set checkFileData [read $checkFileHandle]
close $checkFileHandle

puts "Checking specified addresses:"

set checkArray [split $checkFileData "\n"]
foreach i $checkArray {
	puts $i
}

puts "Pinging:"
set pingCommand "ping"
set pingCommandPass " -c 1 $i"
foreach i $checkArray {
	set pingResult [exec $pingCommand $i]
	puts $pingResult
}

gets stdin dummy



