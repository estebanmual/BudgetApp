require 'rails_helper'

RSpec.describe '/categories', type: :request do

  let(:valid_params) {{category: {name: "Test", icon:"https://images.unsplash.com/photo-1656610171760-b6c57b537f79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"}}}

  let(:invalid_params) {{category: {icon: "https://images.unsplash.com/photo-1656610171760-b6c57b537f79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"}}}

  before(:each) do
    post user_session_path,
         params: { 'user' => { 'email' => 'john@example.com', 'password' => 'password', 'remember_me' => '0' } }
  end

  it 'renders Index' do
    get categories_path
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:index)
  end

  it 'renders Show' do
    get category_path(id: 1)
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:show)
  end

  it 'renders new' do
    get new_category_path
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:new)
  end

  describe 'Category create' do
    context 'with valid params' do
      it 'category create' do
        expect { post categories_path, params: valid_params }.to change(Category, :count).by(1)
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to('/categories')
      end
    end
    
    context 'with invalid params' do
      it 'does not create category' do
        expect { post categories_path, params: invalid_params }.to change(Category, :count).by(0) 
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response).to render_template(:new)
      end
    end
  end
end
