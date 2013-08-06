require "spec_helper"

describe ConvertersController do
  describe "routing" do

    it "routes to #index" do
      get("/converters").should route_to("converters#index")
    end

    it "routes to #new" do
      get("/converters/new").should route_to("converters#new")
    end

    it "routes to #show" do
      get("/converters/1").should route_to("converters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/converters/1/edit").should route_to("converters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/converters").should route_to("converters#create")
    end

    it "routes to #update" do
      put("/converters/1").should route_to("converters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/converters/1").should route_to("converters#destroy", :id => "1")
    end

  end
end
