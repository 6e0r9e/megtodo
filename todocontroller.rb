require_relative 'list'
require_relative 'todoview'

class TODOController
 def initialize
  @list = List.new
  @view = ToDoView.new
 end

 def method_name
 	
 end
end
