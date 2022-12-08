require 'date'

class Note
  attr_reader :title,:tags,:created_at,:updated_at,:priority

  def initialize(title)
    @title = title
    @created_at = DateTime.now
    @tags = []
    @priority = 0
    update
  end

  def update
    @updated_at = DateTime.now
  end

  def title=(title)
    @title = title
    update
  end

  def tags=(tags)
    @tags = tags
    update
  end

  def priority=(priority)
    @priority = priority
    update
  end

  def to_s
    format('%s (%s, %s, %s, %s, %d) {%s}', @title, @created_at, @updated_at, self.class.name, @tags, @priority, details)
  end

  def details
    ''
  end
end
