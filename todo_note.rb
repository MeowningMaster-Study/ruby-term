require_relative 'note'

class TodoNote < Note
  attr_reader :text

  def initialize(title)
    super(title)
    @done = false
  end

  def done=(done)
    @done = done
    update
  end

  def details
    format('done: %s', @done)
  end
end
