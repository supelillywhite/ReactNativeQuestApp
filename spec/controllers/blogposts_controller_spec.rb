require 'rails_helper'

RSpec.describe BlogpostsController, type: :controller do
  describe "POST create" do
    it "creates a blogpost" do
      request.headers["Accept"] = "application/vnd.api+json"
      request.headers["Content-Type"] = "application/vnd.api+json"
      response = post :create,
        params: {
          format: :json,
          data: {
            type: "blogposts",
            attributes: {
              title: "Post1",
              content: "Some good stuff",
            },
          },
        }

      response = JSON.parse(response.body)
      attributes = response["data"]["attributes"]

      expect(attributes["title"]).to eq("Post1")
      expect(attributes["content"]).to eq("Some good stuff")
    end
  end

  describe "PATCH update" do
    it "updates a blogpost" do
      blogpost = Blogpost.create(title: "hey", content: "there")

      request.headers["Accept"] = "application/vnd.api+json"
      request.headers["Content-Type"] = "application/vnd.api+json"
      response = post :update,
        params: {
          id: blogpost.id,
          format: :json,
          data: {
            id: blogpost.id.to_s,
            type: "blogposts",
            attributes: {
              title: "Post2",
              content: "Some new stuff",
            },
          },
        }

        response = JSON.parse(response.body)
        attributes = response["data"]["attributes"]
  
        expect(attributes["title"]).to eq("Post2")
        expect(attributes["content"]).to eq("Some new stuff")
    end
  end
end