require_relative 'text_note'
require_relative 'image_note'
require_relative 'todo_note'
require_relative 'note_queries'
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def initialize(test_method_name)
    super
    @text_note = TextNote.new('Post 1', 'Lorem ipsum dolor sit amet')
    @image_note = ImageNote.new('Puppy', '/usr/admin/Images/puppy.png')
    @todo_note = TodoNote.new('Buy milk')

    @image_note.tags = ['animals']
    @text_note.priority = 5

    @notes = [@text_note, @image_note, @todo_note]
  end

  def test_filter_by_tag
    result = NoteQueries.filter_by_tag(@notes, 'animals')
    assert_equal([@image_note], result)
  end

  def test_sort_by_priority
    result = NoteQueries.sort_by_priority(@notes)
    assert_equal([@image_note, @todo_note, @text_note], result)
  end

  def test_sort_by_title
    result = NoteQueries.sort_by_title(@notes)
    assert_equal([@todo_note, @text_note, @image_note], result)
  end

end