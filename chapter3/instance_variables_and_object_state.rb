class Person
  def set_name(string)
    puts "Setting person's name.."
    @name = string
  end

  def get_name
    puts "Returning the person's name..."
    @name
  end
end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name

### Initializing an object with state

class Ticket
  attr_reader :venue, :date
  attr_accessor :price # reader and writer or attr :price, true
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
  # def price=(amount) # setter / writer
  #   @price = amount
  # end
  # def venue # getter / reader
  #   @venue
  # end
  # def date
  #   @date
  # end
  # def price
  #   @price
  # end
end

# th = Ticket.new("Town Hall", "11/12/13")
# cc = Ticket.new("Convention Center", "12/13/14")
# puts "We've created two tickets."
# puts "The first is for a #{th.venue}, event on #{th.date}"
# puts "The second is for an event on #{cc.date}, at #{cc.venue}."

ticket = Ticket.new("Town Hall", "11/12/13")
ticket.price=(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price = 72.50
puts "Whoops -- it just went up in. It now costs $#{"%2.f" % ticket.price}."
