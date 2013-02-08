class List
  FILENAME = "data.gemtask"
  attr_reader :tasks

  def initialize
    @tasks = []
    parse_list
  end

  def add(tasks)
    @tasks << Task.new
  end

  def delete!(id)
    @tasks[id]
  end

  def complete(id)
    @tasks[id].complete!
  end

  def count
    
  end

  def save
    
  end

  def list_all
    
  end


  private

  def parse_list
    
  end
end 
