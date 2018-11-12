#METHODS:
def add(number1, number2)
  number1 + number2 
end 

def subtract(number1, number2)
  number1 - number2 
end

def multiply(number1,number2)
  number1 * number2 
end

def divide(number1, number2)
  number1 / number2 
end

def divide_by_zero?(ia)
  while ia.find_index("/") != nil
    op_index = ia.find_index("/")
    if ia[op_index + 1].to_f == 0
      return TRUE
    end
    ia[op_index] = "D"
  end
  while ia.find_index("D") != nil
    op_index = ia.find_index("D")
    ia[op_index] = "/"
  end
  FALSE
end

#BODY
loop do
  puts "Type in a number operation, such as 1 + 3 or 4 - 2"
  input = gets.chomp
  input_array = input.split(" ")
  #print input_array

  if divide_by_zero?(input_array)
    puts "SYNTAX ERROR.  Can't divide by 0."
  else 
    while input_array.size >= 3

      #print input_array
      while input_array.find_index("/") != nil || input_array.find_index("*") != nil
        op_index = input_array.find_index("/") != nil && (input_array.find_index("*") == nil || input_array.find_index("/") < input_array.find_index("*"))? input_array.find_index("/") : input_array.find_index("*")
        index1 = op_index - 1
        int1 = input_array[index1].to_f
        index2 = op_index + 1
        int2 = input_array[index2].to_f

        input_array[index1] = input_array[op_index] == "/" ? divide(int1, int2) : multiply(int1, int2)
        input_array.delete_at(op_index)
        input_array.delete_at(op_index)
      end

      int1 = input_array[0].to_f
      int2 = input_array[2].to_f
      operator = input_array[1]
      
      if operator == "+"
        input_array[0] = add(int1, int2)   
      elsif operator == "-"
        input_array[0] = subtract(int1, int2)
      elsif operator == "*"
        input_array[0] = multiply(int1, int2)
      elsif operator == "/"
        input_array[0] = divide(int1, int2)
      else 
        puts "SYNTAX ERROR.  The input should be a number seperated by a space." 
      end

      input_array.delete_at(1)
      input_array.delete_at(1)

    end
    puts input_array[0].round(2)
  end
end