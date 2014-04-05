require "spec_helper"

describe ChangesController do
  describe "routing" do

    it "routes to #index" do
      get("/changes").should route_to("changes#index")
    end

    it "routes to #new" do
      get("/changes/new").should route_to("changes#new")
    end

    it "routes to #show" do
      get("/changes/1").should route_to("changes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/changes/1/edit").should route_to("changes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/changes").should route_to("changes#create")
    end

    it "routes to #update" do
      put("/changes/1").should route_to("changes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/changes/1").should route_to("changes#destroy", :id => "1")
    end

  end
end
