require 'rails_helper'

describe CategoriesController, type: :controller do
  describe '#new', type: :controller do

    it 'should create category' do
      get :new, params: { category: { name: 'oculist' }}
      expect(response).to have_http_status(:success)
    end
  end
end