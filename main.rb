require_relative 'text_note'
require_relative 'image_note'
require_relative 'todo_note'
require_relative 'note_queries'

text_note = TextNote.new('Post 1', 'Lorem ipsum dolor sit amet')
image_note = ImageNote.new('Puppy', '/usr/admin/Images/puppy.png')
todo_note = TodoNote.new('Buy milk')

image_note.tags = ['animals']
text_note.priority = 5

notes = [text_note, image_note, todo_note]
notes.each { |note| puts note }

puts
in_datetime_range = NoteQueries.filter_by_datetime(notes, DateTime.new(2001, 2, 3, 4, 5, 6), DateTime.new(2050, 6, 5, 4, 3, 1))
puts in_datetime_range

puts
with_tag = NoteQueries.filter_by_tag(notes, 'animals')
puts with_tag

puts
sorted_by_updated_at = NoteQueries.sort_by_updated_at(notes)
puts sorted_by_updated_at

puts
sorted_by_priority = NoteQueries.sort_by_priority(notes)
puts sorted_by_priority

puts
sorted_by_title = NoteQueries.sort_by_title(notes)
puts sorted_by_title