#!/usr/bin/env ruby

students = [
  {name: "Dr. Hannibal Lecter", origin: :lithuania, cohort: :november},
  {name: "Darth Vader", origin: :tatooine, cohort: :december},
  {name: "Nurse Ratched", origin: :usa, cohort: :january},
  {name: "Michael Corleone", origin: :italy, cohort: :november},
  {name: "Alex DeLarge", origin: :england, cohort: :december},
  {name: "The Wicked Witch of the West", origin: :oz, cohort: :january},
  {name: "Terminator", origin: :future, cohort: :november},
  {name: "Freddy Krueger", origin: :ohio, cohort: :december},
  {name: "The Joker", origin: :gotham, cohort: :january},
  {name: "Joffrey Baratheon", origin: :kingslanding, cohort: :november},
  {name: "Norman Bates", origin: :usa, cohort: :december},
]


def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

=begin
# prints students that start with the letter "D"
def print(students)
  students.each do |student|
    puts "#{student[:name]}, #{student[:cohort]} cohort" if student[:name].length < 12
  end
end
=end

# prints students with their index starting with 1
def print(students)
  students.each_with_index { |item, index|
    puts "#{index + 1}. #{item[:name]}, from #{item[:origin].capitalize}, #{item[:cohort]} cohort".center(150)
  }
end

def print_footer(names)
puts "Overall, we have #{names.count} villains enrolled in our Villains Academy"
end

=begin
# turns the hardcoded array of students  into an interactive array based on user input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  cohort = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: cohort.to_sym}
    cohort = "november" if cohort.empty?
    puts "Now we have #{students.count} students"
    name = gets.chomp
    cohort = gets.chomp
  end
  students
end
=end


print_header
print(students)
print_footer(students)