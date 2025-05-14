def calculator
  puts "Ласкаво просимо до калькулятора!" # Привітання
  puts "Введіть перше число:" 
  num1 = gets.chomp.to_f 

  puts "Введіть операцію (+, -, *, /):" # Вибір операції
  operator = gets.chomp

  puts "Введіть друге число:"
  num2 = gets.chomp.to_f

# Виконання обчислення
  result = case operator
           when "+"
             num1 + num2
           when "-"
             num1 - num2
           when "*"
             num1 * num2
           when "/"
             if num2 == 0
               "Помилка: ділення на нуль" # Обробка ділення на нуль
             else
               num1 / num2
             end
           else
             "Невідома операція" # Обробка невідомої операції
           end

  puts "Результат: #{result}" # Виведення результату
end 

# Виклик калькулятора 
calculator