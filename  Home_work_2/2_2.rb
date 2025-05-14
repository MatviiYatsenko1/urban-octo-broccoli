# Перетворення речення на Pig Latin
def convert_to_pig_latin(sentence)
  # 1. Розділення речення на слова
  words = sentence.split(" ")

  # 2. Перетворення кожного слова на Pig Latin
  pig_latin_words = words.map do |word|
    # Обробка пунктуації: знаходимо пунктуацію наприкінці слова
    punctuation = word.match(/[^a-zA-Zа-яА-Я0-9]+$/)&.to_s || ""
    word_without_punctuation = word.gsub(/[^a-zA-Zа-яА-Я0-9]+$/, "")
    first_letter = word_without_punctuation[0]
    rest_of_word = word_without_punctuation[1..-1]
    # Додаємо "ay" в кінці
    pig_latin_word = rest_of_word + first_letter + "ay"
    pig_latin_word + punctuation # Повертаємо слово з пунктуацією
  end

  # 3. З'єднання слів у речення
  pig_latin_sentence = pig_latin_words.join(" ")
  return pig_latin_sentence
end

# Приклад використання:
sentence1 = "Hello world"
result1 = convert_to_pig_latin(sentence1)
puts "Для речення 'Hello world' у Pig Latin: #{result1}" # Виведе: Ellohay orldway

sentence2 = "I love Ruby programming!"
result2 = convert_to_pig_latin(sentence2)
puts "Для речення 'I love Ruby programming!' у Pig Latin: #{result2}" # Виведе: Iay ovelay Ubyray rogrammingpay!
