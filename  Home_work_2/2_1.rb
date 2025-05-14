# Знаходження найбільш частого елемента в масиві
def find_most_frequent_elements(arr)
  # 1. Підрахунок частоти кожного елемента
  frequency_count = Hash.new(0)
  arr.each { |element| frequency_count[element] += 1 }

  # 2. Визначення найвищої частоти
  max_frequency = frequency_count.values.max

  # 3. Знаходження всіх елементів з найвищою частотою
  most_frequent_elements = frequency_count.select { |element, count| count == max_frequency }.keys

  # 4. Повернення результату
  return most_frequent_elements
end

# Приклад використання:
array1 = [1, 3, 1, 3, 2, 1]
result1 = find_most_frequent_elements(array1)
puts "Для масиву [1, 3, 1, 3, 2, 1] найбільш часті елементи: #{result1}" # Виведе: 1

array2 = [4, 4, 5, 6, 6, 5]
result2 = find_most_frequent_elements(array2)
puts "Для масиву [4, 4, 5, 6, 6, 5] найбільш часті елементи: #{result2}" # Виведе: 4, 5, 6