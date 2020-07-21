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
require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
