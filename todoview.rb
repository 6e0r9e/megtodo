class ToDoView
  def confirm_add
    puts "Adding your task now..."
  end

  def confirm_delete
    puts "Deleting your task now..."
  end

  def display_task(id, status, task)
    x_or_o = status ? "o" : "x"
    puts "  #{x_or_o}::#{id}::#{task}"
  end

  def help
    puts "Here are the commands:"
    puts "  add <text of task>\tAdd a new task"
    puts "  list\t\t\tList all tasks"
    puts "  delete <task_id>\tDelete a task by ID number"
    puts "  complete <task_id>\tMark task as complete by ID number"
    puts "  help\t\t\tDisplay this message."
  end

  def error
    puts "Invalid command. Type <help> for possible commands."
  end

  def display_list_header
    puts "======================================="
    puts "=                        Task List    ="
    puts "======================================="
  end
end
