require_relative 'note'

class TextNote < Note
  attr_reader :text

  def initialize(title, text)
    super(title)
    @text = text
  end

  def text=(text)
    @text = text
    update
  end

  def details
    format('text: %s', @text)
  end
end
