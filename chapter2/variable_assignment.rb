str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc

def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)

puts s

###### Dupping And Freezing Objects ####
## Protects objects from from being changed inside
## methods to which you send them ##

s = "Original string content!"
change_string(s.dup)
puts s

## You can also freeze and object ##

s = "Original string content!"
s.freeze
change_string(s)
