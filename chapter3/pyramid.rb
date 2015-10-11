
# def pyramid(x)
#   extra = []
#   x.times do |i|
#     extra.each {|i| print i + "*"}
#     puts '*' + '*'
#     extra << '*'
#     print i
#   end
#
# end

# pyramid(6)

add = []
6.downto(1) do |i|
  print " "*i
  add << 'x'
  puts "x"*add.length
end
