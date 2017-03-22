require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      :user_id => 1,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "input#house_user_id[name=?]", "house[user_id]"

      assert_select "input#house_name[name=?]", "house[name]"

      assert_select "input#house_address[name=?]", "house[address]"
    end
  end
end
