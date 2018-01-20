#!/usr/bin/env ruby

@students = []

def print_header
  puts "--------------"
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_footer
  if @students.count > 1 
    puts "Overall, we have #{@students.count} villains enrolled in our Villains Academy"
    puts "--------------"
  else 
    puts "Overall, we have #{@students.count} villain enrolled in our Villains Academy"
    puts "--------------"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp
  cohort = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: cohort.to_sym}
    cohort = "november" if cohort.empty?
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else 
      puts "Now we have #{@students.count} students"
    end 
    name = gets.chomp
    cohort = gets.chomp
  end
end

def print_students_list
  @students.each do |item|
    puts "#{item[:name].capitalize}, #{item[:cohort].capitalize} cohort"
  end
end

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer  
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "Please enter a valid option"
  end
end

def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end
end

interactive_menu