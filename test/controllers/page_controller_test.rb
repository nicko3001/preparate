require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get Acerca" do
    get :Acerca
    assert_response :success
  end

  test "should get Contacto" do
    get :Contacto
    assert_response :success
  end

end
