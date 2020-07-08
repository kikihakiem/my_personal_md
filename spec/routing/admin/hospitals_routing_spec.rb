require "rails_helper"

RSpec.describe Admin::HospitalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/hospitals").to route_to("admin/hospitals#index")
    end

    it "routes to #new" do
      expect(get: "/admin/hospitals/new").to route_to("admin/hospitals#new")
    end

    it "routes to #show" do
      expect(get: "/admin/hospitals/1").to route_to("admin/hospitals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin/hospitals/1/edit").to route_to("admin/hospitals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin/hospitals").to route_to("admin/hospitals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin/hospitals/1").to route_to("admin/hospitals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin/hospitals/1").to route_to("admin/hospitals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin/hospitals/1").to route_to("admin/hospitals#destroy", id: "1")
    end
  end
end
