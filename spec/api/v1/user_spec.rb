require 'rails_helper'
describe "Users API" do
  let(:user_john) {User.new(name: "John", email: "John", password: "John")}

  it 'shows user with id' do
    user_john.save
    sid = user_john.id
    get "/api/v1/users/#{sid}"

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right id is returned
    expect(json['id']).to eq(sid)
  end
end