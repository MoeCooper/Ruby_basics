=begin
name = "Kris"
age = "51"

puts ("My name is " + name)
puts ("My age is " + age)

random_variable = nil #variable name random_variable has no value

phrase = "Hawa Woo!"

#************************STRING METHODS*************************
puts phrase.upcase() #uppercase letters HAWA WOO!
puts phrase.downcase() #lowercase letters hawa woo!
puts phrase.strip() #gets rid of leading/trailing white spaces
puts "Hawa Woo!".length() #shows amount of characters in string, 9
puts phrase.include? "Haw" #is the string inside of phrase? Returns bool true
puts phrase[1] #returns index value, a
puts phrase[0,3] #starts at 0 index, returns the index one less than 2nd argument, Haw
puts phrase.index("o") #what position a char starts at, 6
puts phrase.reverse #reverses a string, !ooW awaH

#********************MATH AND NUMBERS**************************
num = 51
puts ("My fav number is " + num.to_s) #converts int to str

puts num.abs() #absolute value, 51

num1 = 51.4
puts num1.round() #rounds number up or down, 51
puts num1.ceil() #shows highest value, returns 52
puts num1.floor() #shows lowest number, returns 51

#Math is a class in Ruby
puts Math.sqrt(36) #returns square root of 36, returns 6.0
puts Math.log(1) #returns 0, I forgot logs.. L0L

#*******************GETTING USER INPUT**************************
#I use BASH to get user input for prompt

print "Enter your name: "
name = gets.chomp.capitalize() #just like std::cin >> name;, and chomp() gets rid of newline initialised by enter button when you hit enter button from user input, capitalizes first letter

print "Enter your age: "
age = gets.chomp() #just like std::cin >> name;
puts ("Hello " + name + ", you are cool! Your age is " + age.to_s + ".") #returns 'Hello Maurice, you are cool!'

#******************BUIDLING A MADLIBS************************

print "Enter a color: "
color = gets.chomp().uppercase

print "Enter a plural noun: "
plural_noun = gets.chomp().capitalize

print "Enter a celebrity: "
celebrity = gets.capitalize

puts "\n"
puts ("Roses are " + color)
puts (plural_noun + " are blue, ")
puts ("I love " + celebrity)

=end
#******************ARRAYS************************
friends = Array["John", "Chris", "Lilly"] #arrays can be mixed data types
puts friends.include? "Kare" #searches for Kare in array, returns false
puts friends.reverse #reverses string, prints lilly, chris, john
puts "\n"
puts friends.sort #alphabetically sorts array

=begin
puts friends[-1] #grabs last index

puts friends[0,2]#range

new_friends = Array.new #creating an undisclosed value of array
new_friends[0] = "mike"
new_friends[4] = "lewis"

puts new_friends[0,6] #prints empty gap between values
puts new_friends[3] #displays blank line
=end

#******************HASHES************************
#Hash is a type of array. Uses key value pair, similar to objects
=begin
states = {
  1 => "WA",
  :New_York => "NY",
  :Oregon => "OR"
}

puts states[1]

#******************METHODS************************
def sayhi(name, age = 43)
  puts ("Hello " + name + ", you are " + age.to_s + " years old.")
end

sayhi("Moe")


#******************IF STATEMENTS************************
ismale = true
istall = true

if ismale and istall
  puts "You are male and tall"
elsif ismale and !istall
  puts "You are a short male"
else
  puts "You are not male"
end

#******************CALCULATOR************************

puts "Enter a number: "
num1 = gets.chomp().to_f

puts "Enter a mathmatical operation(/*-+): "
operation = gets.chomp()

puts "Enter a second number: "
num2 = gets.chomp().to_f

if operation == "/"
  print (num1 / num2)
elsif operation == "*"
  print (num1 * num2)
elsif operation == "-"
  print (num1 - num2)
elsif operation == "+"
  print (num1 + num2)
else
  puts "invalid operation"
end

#******************CASE EXPRESSIONS************************

def get_day_name(day)
  day_name = ""

  case day
  when "mon"
    day_name = "Monday"
  when "tues"
    day_name = "Tuesday"
  when "wed"
    day_name = "Wednesday"
  when "thurs"
    day_name = "Thursday"
  when "fri"
    day_name = "Friday"
  when "sat"
    day_name = "Saturday"
  when "sun"
    day_name = "Sunday"
  else
    day_name = "Invalid abbreiation"
  end

  return day_name
end
puts "\n"
puts get_day_name("mon")
=end
#******************WHILE LOOPS************************

=begin

index = 1
while index <= 5
  puts index
  index += 1
end

#******************GUESSING GAME************************

secret_word = "hat"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    print "Enter your guess: "
    guess = gets.chomp()
    guess_count += 1
  else
    out_of_guesses = true
  end
end

if out_of_guesses
  puts "You lose"
else
  puts "You win!"
end

#******************FOR LOOPS************************

myfriends = ["jeff", "bobby", "oscar", "frank", "scott"]

for variable in myfriends
  puts variable
end

#another way to loop below
myfriends.each do |anything|
  puts anything
end

#looping through a range
for index in 0..5
  puts index #prints loop 0 to 5
end

6.times do |anythingelse| #another way to loop 0 to 5
  puts anythingelse
end

#******************EXPONENT METHOD************************
def pow(base_num, pow_num)
  result = 1
  pow_num.times do |index|
    result *= base_num
  end

  return result
end

puts pow(2,3)

=end

#******************READING FILES************************
=begin
File.open("employees.txt", "r" ) do |file| #file name, mode of reading, stores the employee file into variable called File

  #puts file.read() #reads file as string
  #puts file.readline() #reads next line
  #puts file.readchar() #reads next individual char
  #puts file.readlines()[2] #reads 2nd index of file(3rd element)
  for line in file.readlines()
    puts line
  end
end

#alternate way of reading a File
myfile = File.open("employees.txt", "r")
  for line in myfile.readlines()
    puts line
end

myfile.close() #gets rid of open mempry
=end
#******************WRITING/CREATING FILES************************
=begin
File.open("employees.txt", "a") do |file| #opens file in append mode (to add)
  file.write("\nFrankline, Accounting")
end

File.open("index.html", "w") do |file| #creates html file
  file.write("<h1>Hello World!</h1>")
end

File.open("index.html", "r+") do |file|
  file.readline()
  file.write("This text has added to the 1st line of text in index.html")
end
=end
#******************HANDLING ERRORS************************
#num = 10/0
lucky_nums = [3, 54, 18, 96]
begin
  num = 10/0
  lucky_nums["doggydoo"]
rescue ZeroDivisionError => e
  puts e
rescue TypeError => e #stores error into variable e
  puts e
end
