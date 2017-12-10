require "rails_helper"

RSpec.describe PizzaTypesController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/pizza_types").to route_to("pizza_types#index")
    end

    xit "routes to #new" do
      expect(:get => "/pizza_types/new").to route_to("pizza_types#new")
    end

    xit "routes to #show" do
      expect(:get => "/pizza_types/1").to route_to("pizza_types#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/pizza_types/1/edit").to route_to("pizza_types#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/pizza_types").to route_to("pizza_types#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/pizza_types/1").to route_to("pizza_types#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/pizza_types/1").to route_to("pizza_types#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/pizza_types/1").to route_to("pizza_types#destroy", :id => "1")
    end

  end
end
