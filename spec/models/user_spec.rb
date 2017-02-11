require 'rails_helper'
RSpec.describe User do
  let(:user_john) {User.new(name: "John", email: "John", password: "John")}

  it "has a secure password" do
    expect(User.has_secure_password).to be_truthy
  end
  it "has 2 roles, user=>0 and admin=>1" do
    expect(User.roles.count).to eq(2)
    expect(User.roles[:user]).to eq(0)
    expect(User.roles[:admin]).to eq(1)
  end
  it "john has a default role which is user" do
    expect(user_john.role).to match(/user/)
  end
  it "creates in db a user named John" do
    user_john.save
    expect(User.last.name).to match(/John/)
  end
end