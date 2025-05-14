# масив цілих чисел
array = [5, -3, 0, 8, 1, 4, 5, -3, 8, 0, 1, 4]
puts "Масив: #{array}"

# число K
k = 3
puts "Число K: #{k}"

# інтервал
a = 1
b = 5
puts "Інтервал a..b: #{a}..#{b}"


# 1. Мінімальний елемент в інтервалі a..b
min_in_interval = array.select { |x| x >= a && x <= b }.min
puts "1. Min в інтервалі #{a}..#{b}: #{min_in_interval}"

# 2. Чи існує елемент < K?
puts "2. Існує < K: #{array.any? { |x| x < k }}"

# 3. Чи існує елемент > K?
puts "3. Існує > K: #{array.any? { |x| x > k }}"

# 4. Чи всі елементи < K?
puts "4. Всі < K: #{array.all? { |x| x < k }}"

# 5. Чи всі елементи > K?
puts "5. Всі > K: #{array.all? { |x| x > k }}"

# 6. Кількість елементів < K
puts "6. Кількість < K: #{array.count { |x| x < k }}"

# 7. Індекс першого елемента > K
puts "7. Індекс першого > K: #{array.find_index { |x| x > k }}"

# 8. Індекс останнього елемента < K
puts "8. Індекс останнього < K: #{array.rindex { |x| x < k }}"

# 9. Індекси елементів, менших за лівого сусіда
less_than_left = (1...array.length).select { |i| array[i] < array[i - 1] }
puts "9. Менші за лівого: #{less_than_left}, Кількість: #{less_than_left.length}"

# 10. Індекси елементів, менших за правого сусіда
less_than_right = (0...array.length - 1).select { |i| array[i] < array[i + 1] }
puts "10. Менші за правого: #{less_than_right}, Кількість: #{less_than_right.length}"

# 11. Індекси елементів, більших за правого сусіда
greater_than_right = (0...array.length - 1).select { |i| array[i] > array[i + 1] }
puts "11. Більші за правого: #{greater_than_right}, Кількість: #{greater_than_right.length}"

# 12. Індекси елементів, більших за лівого сусіда
greater_than_left = (1...array.length).select { |i| array[i] > array[i - 1] }
puts "12. Більші за лівого: #{greater_than_left}, Кількість: #{greater_than_left.length}"

# 13. Чи є масив зростаючою послідовністю?
is_increasing = (0...array.length - 1).all? { |i| array[i] <= array[i + 1] }
puts "13. Зростаюча: #{is_increasing}"

# 14. Чи є масив спадною послідовністю?
is_decreasing = (0...array.length - 1).all? { |i| array[i] >= array[i + 1] }
puts "14. Спадаюча: #{is_decreasing}"

# 15. Чи є масив упорядкованою послідовністю?
puts "15. Упорядкована: #{is_increasing || is_decreasing}"