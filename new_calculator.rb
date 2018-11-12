#Methods
#adds two numbers and returns the sum
def add(number1, number2, number3 = 0)
  number1 + number2 + number3
end
#subtract two numbers and returns the difference
def subtract(number1,number2,number3 = 0)
  number1 - number2 - number3 
end
def multiplication(number1,number2,number3 = 1)
  number1 * number2 * number3
end 
def division(number1,number2,number3 = 1)
  number1 / number2 / number3
end 
#Body
loop do
  puts "Type in a two number operation, such as 1 + 3 or 4 - 2. If you want to exit this program type EXIT"
  input = gets.chomp
  input_array = input.split(" ")
  
  operator_count = (input_array.size - 1) / 2
  
  int1 = input_array[0].to_i
  operator = input_array[1]
  int2 = input_array[2].to_i
  operator2 = input_array[3]
  int3 = input_array[4].to_i
  # if operator == "+" || operator == "-" 
  if operator == "+"
    answer = add(int1,int2)
  elsif operator == "-"
    answer = subtract(int1,int2)
  elsif operator == "*"
    answer = multiplication(int1,int2)
  elsif operator == "/"
    answer = division(int1,int2)
  end
  
  if operator2 == "+"
    puts add(answer, int3)
  elsif operator2 == "-"
    puts subtract(answer,int3)
  elsif operator2 == "*"
    puts multiplication(answer, int3)
  elsif operator2 == "/"
    puts division(answer,int3)
  end
  
  if input.length == 7 
    puts "SYNTAX ERROR. The input should be a number seperated by a space, a + or -, the another space, and finally another number. Ex, 1 + 3"
  end
  if input == "EXIT" || input == "exit"
    exit
  end
end