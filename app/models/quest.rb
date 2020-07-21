# == Schema Information
#
# Table name: quests
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  location    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Quest < ApplicationRecord
  has_many :gears
end
