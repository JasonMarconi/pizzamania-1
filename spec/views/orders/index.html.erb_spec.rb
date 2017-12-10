require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :customer_name => "Customer Name",
        :customer_phone => "Customer Phone",
        :pizza_type => nil,
        :size => "Size"
      ),
      Order.create!(
        :customer_name => "Customer Name",
        :customer_phone => "Customer Phone",
        :pizza_type => nil,
        :size => "Size"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end