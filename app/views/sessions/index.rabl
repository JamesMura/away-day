collection :@sessions
attributes :id,:title,:description,:startTime,:endTime,:speakers
child(:room) { attributes :name,:colour,:id }
child(:speakers) { attributes :name,:bio,:id,:photo }
