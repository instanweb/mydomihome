require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      :user_id => 1,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input#house_user_id[name=?]", "house[user_id]"

      assert_select "input#house_name[name=?]", "house[name]"

      assert_select "input#house_address[name=?]", "house[address]"
    end
  end
end
