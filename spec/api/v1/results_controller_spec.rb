require 'rails_helper'

RSpec.describe Api::V1::ResultsController, type: :controller do
  describe '#creates' do
    it 'exists' do
      get :create, str: 'd', format: :json

      expect(response.status).to eq(200)
    end

    it 'returns a json payload with a sum' do
      get :create, str: 'd', format: :json

      expect(response.body).to respond_to(:sum)
    end
  end
end
