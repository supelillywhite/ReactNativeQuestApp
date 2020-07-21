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
require 'rails_helper'

RSpec.describe Blogpost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
