# == Schema Information
#
# Table name: gears
#
#  id          :integer          not null, primary key
#  quest_id    :integer
#  name        :string
#  description :text
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Gear < ApplicationRecord
  belongs_to :quest
end
