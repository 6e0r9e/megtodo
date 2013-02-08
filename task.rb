class Task
  attr_reader :id, :text
  attr_accessor :completed

  def initialize(id, text)
    @id = id
    @text = text
    @completed = false
  end

  def complete!
    @completed = true
  end
end
