class Task
  attr_reader :id, :text
  attr_accessor :completed

  def initialize(id, text, completed = false)
    @id = id
    @text = text
    @completed = completed
  end

  def complete!
    @completed = true
  end
end
