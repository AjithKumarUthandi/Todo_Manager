class Todo < ActiveRecord::Base
  #find if the date is today
  def due_today?
    due_date == Date.today
  end

  #found overdue todos
  def self.overdue
    where("due_date < ?", Date.today)
  end

  #found today due todos
  def self.due_today
    where("due_date = ?", Date.today)
  end

  #found which todos have a days
  def self.due_later
    where("due_date > ?", Date.today)
  end

  def self.completed
    all.where(completed: true)
  end

  # #Display the Todo-list with patterns
  # def self.show_list
  #   date = Date.today
  #   puts "My Todo-list\n\n"

  #   puts "Overdue\n"
  #   puts overdue.map { |todo| todo.to_displayable_string }
  #   puts "\n\n"

  #   puts "Due Today\n"
  #   puts due_today.map { |todo| todo.to_displayable_string }
  #   puts "\n\n"

  #   puts "Due Later\n"
  #   puts due_later.map { |todo| todo.to_displayable_string }
  #   puts "\n\n"
  # end

  #update Todo is completed with help of id
  def self.mark_as_complete(todo_id)
    todo = find_by(id: todo_id)
    if (todo) #there is id,then update
      todo.completed = true
      todo.save!
      return todo
    end
    puts "Error! Invalid id" #else, print message and exit from here
    exit
  end
end
