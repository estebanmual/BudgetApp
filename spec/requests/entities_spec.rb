require 'rails_helper'

RSpec.describe '/entities', type: :request do
  let(:valid_params) do
    { entity: { name: 'Test', amount: 100.0, category_id: 1, user_id: 1 } }
  end

  let(:invalid_params) do
    { entity: { amount: 100.0, category_id: 1, user_id: 1 } }
  end

  before(:each) do
    post user_session_path,
         params: { 'user' => { 'email' => 'john@example.com', 'password' => 'password', 'remember_me' => '0' } }
  end

  describe 'Entity create' do
    context 'with valid params' do
      it 'entity create' do
        expect { post entities_path, params: valid_params }.to change(Entity, :count).by(1)
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to('/categories')
      end
    end
    context 'with invalid params' do
      it 'does not create entity' do
        expect { post entities_path, params: invalid_params }.to change(Entity, :count).by(0)
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response).to render_template(:new)
      end
    end
  end
end
