require "rails_helper"

RSpec.describe Admin::DoctorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/doctors").to route_to("admin/doctors#index")
    end

    it "routes to #new" do
      expect(get: "/admin/doctors/new").to route_to("admin/doctors#new")
    end

    it "routes to #show" do
      expect(get: "/admin/doctors/1").to route_to("admin/doctors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin/doctors/1/edit").to route_to("admin/doctors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin/doctors").to route_to("admin/doctors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin/doctors/1").to route_to("admin/doctors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin/doctors/1").to route_to("admin/doctors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin/doctors/1").to route_to("admin/doctors#destroy", id: "1")
    end
  end
end
