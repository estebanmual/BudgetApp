require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid' do
    user = User.new(name: "Test",email: "test@test.com", password: "testtest")
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(name: nil, email: "test@test.com", password: "testtest")
    expect(user).to_not be_valid
  end

  it 'validates presence of email' do
    user = User.new(name: "Test", email: nil, password: "testtest")
    expect(user).to_not be_valid
  end

  it 'validates presence of password' do
    user = User.new(name: "Test", email: "test@test.com", password: nil)
    expect(user).to_not be_valid
  end
end
