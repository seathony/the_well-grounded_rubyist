obj = Object.new
if obj.respond_to?("talk")
  obj.talk
else
  puts "Sorry, the object doesn't understand the 'talk' message."
end

print "\nInformation desired: "
request = gets.chomp

#######Ticket##############
ticket = Object.new

def ticket.date
  "01/02/03"
end
def ticket.venue
  "Town Hall"
end
def ticket.event
  "Author's reading"
end
def ticket.performer
  "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end
def ticket.price
  5.50
end
##############################

if request == "venue"
  puts ticket.venue
elsif request == "performer"
  puts ticket.performer
  # ....add more shit
end

# alternative
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available"
end
