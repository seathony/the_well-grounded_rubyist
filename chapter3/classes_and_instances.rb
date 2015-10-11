class Ticket
  def event
    "Can't really be specified yet..." ### instance methods
  end
end

ticket = Ticket.new
puts ticket.event


### Overriding methods ###

class C
  def m
    puts "First definition of method m"
  end
  def m
    puts "Second defintion of method m"
  end
end

C.new.m
