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
    @tasks[id].delete
  end

  def complete(id)
    @tasks[id].complete!
  end

  def count
    @tasks.length
  end

  def save
  end

  def list_all
    @tasks
  end


  private

  def parse_list
    lines = []
    File.open(FILENAME) do |f|
      lines = f.readlines
    end  
    lines.each do |line|
      line.chomp!
    end
      # lines << f.each_slice(3) 
    puts lines.inspect   
  end
end 

l = List.new
