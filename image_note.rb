require_relative 'note'

class ImageNote < Note
  attr_reader :image_uri

  def initialize(title, image_uri)
    super(title)
    @image_uri = image_uri
  end

  def image_uri=(image_uri)
    @image_uri = image_uri
    update
  end

  def details
    format('image URI: %s', @image_uri)
  end
end
