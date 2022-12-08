class NoteQueries
  def self.filter_by_datetime(notes, from, to)
    notes.select{ |note| note.created_at >= from && note.created_at <= to }
  end

  def self.filter_by_tag(notes, tag)
    notes.select{ |note| note.tags.include? tag }
  end

  def self.sort_by_updated_at(notes)
    notes.sort_by(&:updated_at)
  end

  def self.sort_by_priority(notes)
    notes.sort_by(&:priority)
  end

  def self.sort_by_title(notes)
    notes.sort_by(&:title)
  end
end
