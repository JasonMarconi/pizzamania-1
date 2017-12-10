require 'rails_helper'

RSpec.describe "pizza_types/new", type: :view do
  before(:each) do
    assign(:pizza_type, PizzaType.new(
      :name => "MyString"
    ))
  end

  it "renders new pizza_type form" do
    render

    assert_select "form[action=?][method=?]", pizza_types_path, "post" do

      assert_select "input#pizza_type_name[name=?]", "pizza_type[name]"
    end
  end
end
