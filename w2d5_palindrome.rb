require 'pry'

def start
  puts "-------------------------------------"
  puts "Please enter your text or type EXIT"
  print "> "
  user_input = gets.strip.downcase
    case user_input
    when 'exit'
      puts "Goodbye"
      exit
    else
    end
    @array = []
    @rev_array = []
    @extra_array = []
    checker(user_input)
end

def checker(user_input)
  @array = user_input.split('')
  @extra_array = user_input.split('')
  reverse(user_input)
end

def reverse(user_input)
  while @extra_array.length > 0
    @rev_array << @extra_array.pop
  end
  compare(user_input)
end

def compare(user_input)
  rev_user = @rev_array.join
  user_array = @array.join
  if rev_user === user_array
    puts "it is a palindrome"
  else 
    puts "nope"
  end
  start
end

puts
puts "========Palindrome Checker========"
start