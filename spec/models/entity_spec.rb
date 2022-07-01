require 'rails_helper'

RSpec.describe Entity, type: :model do
  it 'should be valid' do
    entity = Entity.new(name: 'Test', amount: 100, user_id: 1, category_id: 1)
    expect(entity).to be_valid
  end

  it 'validates presence of name' do
    entity = Entity.new(amount: 100, user_id: 1, category_id: 1)
    expect(entity).to_not be_valid
  end

  it 'validates presence of amount' do
    entity = Entity.new(name: 'Test', user_id: 1, category_id: 1)
    expect(entity).to be_valid
  end
end
