require 'rails_helper'

RSpec.describe 'entities/new', type: :feature do
  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    click_on 'NEW ENTITY'
  end

  it 'renders new entity form' do
    expect(page).to have_selector('form.newEntity__form')
  end

  it 'renders the navbar' do
    expect(page).to have_selector('nav.navbar')
  end

  it 'takes me back to categories index page' do
    click_on '<'
    expect(current_path).to eq('/categories')
  end
end
