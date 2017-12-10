require 'rails_helper'

RSpec.describe "pizza_types/edit", type: :view do
  before(:each) do
    @pizza_type = assign(:pizza_type, PizzaType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit pizza_type form" do
    render

    assert_select "form[action=?][method=?]", pizza_type_path(@pizza_type), "post" do

      assert_select "input#pizza_type_name[name=?]", "pizza_type[name]"
    end
  end
end
