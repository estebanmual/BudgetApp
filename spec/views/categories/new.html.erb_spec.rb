require 'rails_helper'

RSpec.describe 'categories/new', type: :feature do
  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    click_button 'NEW CATEGORY'
  end

  it 'renders new category form' do
    expect(page).to have_selector('form.newCategory__form')
  end

  it 'renders the navbar' do
    expect(page).to have_selector('nav.navbar')
  end

  it 'take me back to categories index' do
    click_on '<'
    expect(current_path).to eq('/categories')
  end
end
