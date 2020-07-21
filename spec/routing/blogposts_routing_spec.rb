require "rails_helper"

RSpec.describe BlogpostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/blogposts").to route_to("blogposts#index")
    end

    it "routes to #show" do
      expect(:get => "/blogposts/1").to route_to("blogposts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/blogposts").to route_to("blogposts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/blogposts/1").to route_to("blogposts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/blogposts/1").to route_to("blogposts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/blogposts/1").to route_to("blogposts#destroy", :id => "1")
    end
  end
end
