require_relative 'list'
require_relative 'todoview'

class TODOController
  NUMBER = /\d+/
  def initialize
    @list = List.new
    @view = ToDoView.new
  end

 def start
  command = ARGV.shift

  case command
  when "add"
    @list.add(ARGV.join(' '))
    @view.confirm_add
  when "list"
    @view.display_list_header
    @list.tasks.each do |task|
      @view.display_task(task.id, task.completed, task.text)
    end
  when "delete"
    id = ARGV.shift
    @list.delete!(id)
    @view.confirm_delete
  when "help"
    @view.help
  when "complete"
    @list.complete(ARGV.shift)
  else
    @view.error
  end

 end
end

TODOController.new.start
