require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :customer_name => "MyString",
      :customer_phone => "MyString",
      :pizza_type => nil,
      :size => "MyString"
    ))
  end

  xit "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_customer_name[name=?]", "order[customer_name]"

      assert_select "input#order_customer_phone[name=?]", "order[customer_phone]"

      assert_select "input#order_pizza_type_id[name=?]", "order[pizza_type_id]"

      assert_select "input#order_size[name=?]", "order[size]"
    end
  end
end
