require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def test_new_works
    get :new
    assert_response 200
  end

  def test_new_displays_registration_form
    get :new
    assert_select "input#user_email"
    assert_select "input#user_password"
  end

  def test_create_makes_a_new_user
    assert_difference "User.count" do
      post :create, { user: { email: 'katie@example.com', password: '123' } }
    end
  end

end
