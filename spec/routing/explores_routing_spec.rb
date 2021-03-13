require "rails_helper"

RSpec.describe ExploresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/explores").to route_to("explores#index")
    end

    it "routes to #new" do
      expect(get: "/explores/new").to route_to("explores#new")
    end

    it "routes to #show" do
      expect(get: "/explores/1").to route_to("explores#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/explores/1/edit").to route_to("explores#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/explores").to route_to("explores#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/explores/1").to route_to("explores#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/explores/1").to route_to("explores#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/explores/1").to route_to("explores#destroy", id: "1")
    end
  end
end
