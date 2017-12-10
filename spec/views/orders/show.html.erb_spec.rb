require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :customer_name => "Customer Name",
      :customer_phone => "Customer Phone",
      :pizza_type => nil,
      :size => "Size"
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer Name/)
    expect(rendered).to match(/Customer Phone/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Size/)
  end
end
