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
    @tasks.delete_at(id)
  end

  def complete(id)
    @tasks[id].complete!
  end

  def save
    File.open(FILENAME, "wb") do |f|
      @tasks.each do |task|
        f.write(task.to_s)
      end
    end
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

    lines.each_slice(3) do |id, task, status|
      @tasks << Task.new(id, task, status == "o")
    end
  end

  def lookup_id
    @tasks.length
  end
end
