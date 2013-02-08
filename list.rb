class List
  FILENAME = "data.gemtask"
  attr_reader :tasks

  def initialize
    @task = []
    parse_list
  end

  def add(task)
    @task << Task.new
  end

  def delete!(id)
    @task[id]
  end

  def complete(id)

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
