require 'rails_helper'

RSpec.describe "pizza_types/index", type: :view do
  before(:each) do
    assign(:pizza_types, [
      PizzaType.create!(
        :name => "Name"
      ),
      PizzaType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of pizza_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
