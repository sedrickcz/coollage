require "spec_helper"

describe CollagesController do
  describe "routing" do

    it "routes to #index" do
      get("/collages").should route_to("collages#index")
    end

    it "routes to #new" do
      get("/collages/new").should route_to("collages#new")
    end

    it "routes to #show" do
      get("/collages/1").should route_to("collages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/collages/1/edit").should route_to("collages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/collages").should route_to("collages#create")
    end

    it "routes to #update" do
      put("/collages/1").should route_to("collages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/collages/1").should route_to("collages#destroy", :id => "1")
    end

  end
end
