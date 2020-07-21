# == Schema Information
#
# Table name: blogposts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Blogpost < ApplicationRecord
end
