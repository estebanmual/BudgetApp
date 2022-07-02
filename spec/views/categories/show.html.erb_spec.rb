require 'rails_helper'

RSpec.describe 'categories/show', type: :feature do
  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    click_on 'Food'
  end

  it 'renders list of entities' do
    expect(page).to have_selector('div.entityList')
  end

  it 'renders the navbar' do
    expect(page).to have_selector('nav.navbar')
  end

  it 'new transaction redirect to new view' do
    click_button 'Add a new transaction'
    expect(current_path).to eq('/entities/new')
  end

  it 'takes me back to the categories index page' do
    click_on '<'
    expect(current_path).to eq('/categories')
  end
end
