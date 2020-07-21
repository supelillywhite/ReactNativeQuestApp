require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  describe "POST create" do
    it "creates a note" do
      request.headers["Accept"] = "application/vnd.api+json"
      request.headers["Content-Type"] = "application/vnd.api+json"
      response = post :create,
        params: {
          format: :json,
          data: {
            type: "notes",
            attributes: {
              text: "stuff",
            },
          },
        }

        response = JSON.parse(response.body)
        attributes = response["data"]["attributes"]
  
        expect(attributes["text"]).to eq("stuff")
    end
  end
end