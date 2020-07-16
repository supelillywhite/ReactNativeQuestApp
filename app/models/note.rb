class Note < ApplicationRecord
  before_save :set_double_notes

  def set_double_notes
    self.double_notes = text + text
  end
end
