require 'list.rb'
require 'task.rb'


class TODOController
 attr_reader :list, :view
 def initialize
  @list = List.new
  @view = ToDoView.new
 end

 def method_name
 	
 end
end
