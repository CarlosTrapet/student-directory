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

def print_footer(names)
  if names.count > 1 
    puts "Overall, we have #{names.count} villains enrolled in our Villains Academy"
  else puts "Overall, we have #{names.count} villain enrolled in our Villains Academy"
  end
end

=begin
def print_cohorts(students)
  november = []
  december = []
  january = []
  students.each do |item|
    if item[:cohort] = november
      november << item
    elsif item[:cohort] = december
      december << item
    elsif item[:cohort] = january
      january << item
    end    
  end
  november.each do |student|
    puts "#{student[:name]}"
  end
  december.each do |student|
    puts "#{student[:name]}"
  end
  january.each do |student|
    puts "#{student[:name]}"
  end
end
=end

# prints students with their index starting with 1
def print(students)
  students.each_with_index { |item, index|
    puts "#{index + 1}. #{item[:name].capitalize}, #{item[:cohort].capitalize} cohort".center(150)
  }
end



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
    if students.count == 1
      puts "Now we have #{students.count} student"
    else 
      puts "Now we have #{students.count} students"
    end 
    name = gets.chomp
    cohort = gets.chomp
  end
  students
end


students = input_students
print_header
print(students)
print_footer(students)