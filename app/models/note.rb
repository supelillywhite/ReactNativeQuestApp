# == Schema Information
#
# Table name: notes
#
#  id           :integer          not null, primary key
#  text         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  double_notes :string
#
class Note < ApplicationRecord
  before_save :set_double_notes

  def set_double_notes
    self.double_notes = text + text
  end
end
