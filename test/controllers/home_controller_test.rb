require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get anasayfa" do
    get home_anasayfa_url
    assert_response :success
  end

  test "should get hakkimda" do
    get home_hakkimda_url
    assert_response :success
  end

  test "should get iletisim" do
    get home_iletisim_url
    assert_response :success
  end

end
