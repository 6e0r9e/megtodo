#View class
class ToDoView

  def print_welcome
    puts "Welcome to your todo list. Here are your options:"
    puts "-a add a task"
    puts "-d delete a task"
    puts "-c complete a task"
    puts "-v view current task"
    puts "-l list all tasks"
    puts "-h get help"
  end
  
  def confirm_add
    puts "Are you sure you want to add this task?"
  end
  
  def confirm_delete
    puts "Are you sure you want to delete this task?"
  end
  
  def display_task
    puts "Here is your current task:"
  end
  
  def display_list
    puts "Here is the list of tasks:"
  end
  
  def help
    puts "Here are the options:"
    puts "-a add a task"
    puts "-d delete a task"
    puts "-c complete a task"
    puts "-v view current task"
    puts "-l list all tasks"
    puts "-h get help"
  end
  
  def error
    puts "That is an invalid request. -h will get you the help menu."
  end
  
  def bid_farewell
    puts "Thank you for using this app. Farewell!"
  end
  
end