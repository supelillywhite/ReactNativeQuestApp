require 'rails_helper'

RSpec.describe GearsController, type: :controller do
  describe "POST create" do
    it "creates a gear" do
      quest = Quest.create(title: "Quest1")

      request.headers["Accept"] = "application/vnd.api+json"
      request.headers["Content-Type"] = "application/vnd.api+json"
      response = post :create,
        params: {
          format: :json,
          data: {
            type: "gears",
            attributes: {
              name: "Quickdraw",
              description: "Black Diamond black and yellow",
              "quest-id": quest.id.to_s,
            },
          },
        }

      response = JSON.parse(response.body)
      attributes = response["data"]["attributes"]

      expect(attributes["name"]).to eq("Quickdraw")
      expect(attributes["description"]).to eq("Black Diamond black and yellow")
      expect(attributes["quest-id"]).to eq(quest.id)
    end
  end

  describe "PATCH update" do
    it "updates a gear" do
      quest = Quest.create(title: "Quest1")
      gear = Gear.create(name: "Quickdraw", description: "Black Diamond black and yellow")

      request.headers["Accept"] = "application/vnd.api+json"
      request.headers["Content-Type"] = "application/vnd.api+json"
      response = post :update,
        params: {
          id: gear.id,
          format: :json,
          data: {
            id: gear.id.to_s,
            type: "gears",
            attributes: {
              name: "ATC",
              description: "Mammut gold",
              "quest-id": quest.id.to_s,
            },
          },
        }

      response = JSON.parse(response.body)
      attributes = response["data"]["attributes"]
  
      expect(attributes["name"]).to eq("ATC")
      expect(attributes["description"]).to eq("Mammut gold")
      expect(attributes["quest-id"]).to eq(quest.id)
    end
  end
end
