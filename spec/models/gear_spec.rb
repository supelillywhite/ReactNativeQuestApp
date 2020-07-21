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
require 'rails_helper'
require 'spec_helper'

RSpec.describe Gear, type: :model do
  describe "quest relations" do
    it "lets a gear belong to a quest" do
      quest = Quest.create(title: "Quest1")

      gear = Gear.create(
        name: "quickdraw",
        description: "yellow and black",
        quest: quest,
      )

      expect(gear.quest.title).to eq("Quest1")
    end
  end
end
