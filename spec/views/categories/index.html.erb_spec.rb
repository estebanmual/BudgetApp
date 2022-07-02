require 'rails_helper'

RSpec.describe 'categories/index', type: :feature do
  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  it 'renders a list of categories' do
    expect(page).to have_selector('div.categories__list')
  end

  it 'renders the navbar' do
    expect(page).to have_selector('nav.navbar')
  end

  it 'new category button redirect to new view' do
    click_button 'NEW CATEGORY'
    expect(current_path).to eq('/categories/new')
  end
end
