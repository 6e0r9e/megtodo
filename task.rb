class Task
  attr_reader :id, :text
  attr_accessor :completed

  def initialize(id, text, completed)
    @id = id
    @text = text
    @completed = completed
  end

  def complete!
    @completed = true
  end

  def to_s
    letter = @completed ? "x" : "o"
    "#{@id}\n#{@text}\n#{letter}\n"
  end
end
