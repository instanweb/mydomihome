require 'rails_helper'
RSpec.describe User do
  it "has a secure password" do
    expect(User.has_secure_password).to be_truthy
  end
  it "has 2 roles, user=>0 and admin=>1" do
    expect(User.roles.count).to eq(2)
    expect(User.roles[:user]).to eq(0)
    expect(User.roles[:admin]).to eq(1)
  end
  it "has a default role which is user" do
    user=User.new
    expect(user.role).to match(/user/)
  end
end