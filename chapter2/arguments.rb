obj = Object.new
#### error wrong number of args (3 for 1) ######
# def obj.one_arg(x)
#   puts "I require one and only one argument!"
# end
# obj.one_arg(1,2,3)
################################################
#### Required and optional arguments ##########
def obj.multi_args(*x)
  puts "I can take zero or more arguments!"
end

puts "\nThe *x notation means that when you call the method,
you can supply any number of arguments (or none)."

def two_or_more(a,b,*c)
  puts "\nI require two or more arguments!"
  puts "And sure enough, I got: "
  p a, b, c
end

two_or_more(1,2,3,4,5)
##############################################
#### Default vaules for arguments ##########
def default_args(a,b,c=1)
  puts "\nValues of variables: ",a,b,c
end

default_args(3,2)
default_args(4,5,6)
#############################################
#### Order of parameters and arguments #####
def mixed_args(a,b,*c,d)
  puts "\nArguments:"
  p a,b,c,d
end

mixed_args(1,2,3,4,5)
mixed_args(1,2,3)

def arg_unleashed(a,b=1,*c,d,e)
  puts "\nArguments unleased:"
  p a,b,c,d,e
end

arg_unleashed(1,2,3,4,5)
arg_unleashed(1,2,3,4)
arg_unleashed(1,2,3)
arg_unleashed(1,2,3,4,5,6,7,8)
# arg_unleashed(1,2) wrong number of args (2 for 3+)
