class List
  FILENAME = "data.gemtask"
  attr_reader :tasks

  def initialize
    @tasks = []
    parse_list
  end

  def add(task)
    id = lookup_id
    @tasks << Task.new(id, task)
  end

  def delete!(id)
    @tasks[id].delete #bugbug
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
      lines = f.readlines.map!(&:chomp)
    end  

    lines.each_slice(3) do |id, task, completed|
      @tasks << Task.new(id, task, completed)
    end
  end

  def lookup_id
    puts self.count
  end
end
