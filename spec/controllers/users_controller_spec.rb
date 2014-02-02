require 'spec_helper'

describe UsersController do

  describe 'GET #new' do
    it 'responds successfully' do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    it 'creates a new user' do
      expect {
        post :create, { user: { email: 'katie@example.com', password: '123' } }
      }.to change(User, :count).by(1)
    end
  end

end
