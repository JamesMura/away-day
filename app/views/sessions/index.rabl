collection :@sessions
attributes :id,:title,:description,:is_keynote,:startTime,:endTime,:speakers
child(:room) { attributes :name,:colour,:id }
child(:speakers) { attributes :name,:bio,:id,:photo }
