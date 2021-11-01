require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest


  test "invalid signup information" do 
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                           email: "user@invalid",
                                           password:     "password",
                                           password_confirmation: "password"}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
  # test "the truth" do
  #   assert true
  # end
end
