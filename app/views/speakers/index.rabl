collection :@speakers
attributes :id,:name,:bio,:photo,:sessions
child(:sessions) { 
	attributes :title,:description,:id,:startTime,:endTime,:room
	child(:room) { attributes :name,:colour,:id }
 }

