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
FactoryBot.define do
  factory :gear do
    name { "MyString" }
    description { "MyText" }
    price { 1 }
  end
end
