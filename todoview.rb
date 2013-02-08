#View class
class ToDoView

  def initialize
    until gets.chomp == "\n"
    puts "Welcome to todo app. Here are your options."
    puts "-a add a task"
    puts "-d delete a task"
    puts "-c complete a task"
    puts "-l list all tasks"
    puts "-h get help"
    gets.chomp
  end
end

  def confirm_add
    puts "Do you want to add this task?"
    gets.chomp == "yes" ? task.add : nil
  end
  
  def confirm_delete
    puts "Are you sure you want to delete this task?"
    gets.chomp == "yes" ? task.delete : 
  end
  
  def list_help
    puts "Make sure you typed in a valid command."
  end
    
end