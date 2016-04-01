require 'rails_helper'

describe HomeController, type: :controller do

  describe 'GET#index' do
    before { get :index }

    it 'assigns an instance variable' do
      expect(assigns(:message)).to eq "Hello from the controller!"
    end
  end

end
