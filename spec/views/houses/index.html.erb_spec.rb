require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        :user_id => 2,
        :name => "Name",
        :address => "Address"
      ),
      House.create!(
        :user_id => 2,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
