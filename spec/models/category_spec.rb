require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid' do
    category = Category.new(name: "Test", icon: "https://source.unsplash.com/random/?city,night", user_id: 1)
    expect(category).to be_valid
  end

  it 'validates presence of name' do
    category = Category.new(icon: "https://source.unsplash.com/random/?city,night", user_id: 1)
    expect(category).to_not be_valid
  end

  it 'validates presence of icon' do
    category = Category.new(name: "Test", icon:"", user_id: 1)
    expect(category).to_not be_valid
  end
end
