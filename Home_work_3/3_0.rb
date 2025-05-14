# Програма для управління задачами в командному рядку

# Масив для зберігання задач
tasks = []

# Функція для відображення меню
def display_menu()
  puts "\nОпції:"
  puts "1. Додати нову задачу"
  puts "2. Показати всі задачі"
  puts "3. Видалити задачу (за номером)"
  puts "4. Вийти"
  print "Виберіть опцію: "
end

# Функція для додавання нової задачі
def add_task(tasks)
  print "Введіть нову задачу: "
  new_task = gets.chomp
  tasks << new_task
  puts "Задача додана!"
end

# Функція для відображення всіх задач
def show_tasks(tasks)
  if tasks.empty?
    puts "Немає жодних задач."
  else
    puts "\nПоточні задачі:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

# Функція для видалення задачі
def delete_task(tasks)
  show_tasks(tasks) # Показати задачі з індексами перед видаленням
  if tasks.empty?
    puts "Немає задач для видалення."
  else
    print "Введіть номер задачі для видалення: "
    task_number = gets.chomp.to_i
    if task_number > 0 && task_number <= tasks.length
      deleted_task = tasks.delete_at(task_number - 1)
      puts "Задача '#{deleted_task}' видалена!"
    else
      puts "Невірний номер задачі."
    end
  end
end

# Головний цикл програми
loop do
  display_menu()
  choice = gets.chomp.to_i

  case choice
  when 1
    add_task(tasks)
  when 2
    show_tasks(tasks)
  when 3
    delete_task(tasks)
  when 4
    puts "Вихід з програми."
    break
  else
    puts "Невірна опція. Спробуйте ще раз."
  end
end
