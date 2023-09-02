require "rails_helper"

RSpec.describe BiddingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/biddings").to route_to("biddings#index")
    end

    it "routes to #show" do
      expect(get: "/biddings/1").to route_to("biddings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/biddings").to route_to("biddings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/biddings/1").to route_to("biddings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/biddings/1").to route_to("biddings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/biddings/1").to route_to("biddings#destroy", id: "1")
    end
  end
end
