require "test_helper"

class PromoBannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promo_banner = promo_banners(:one)
  end

  test "should get index" do
    get promo_banners_url
    assert_response :success
  end

  test "should get new" do
    get new_promo_banner_url
    assert_response :success
  end

  test "should create promo_banner" do
    assert_difference("PromoBanner.count") do
      post promo_banners_url, params: { promo_banner: { active: @promo_banner.active, description: @promo_banner.description, image_url: @promo_banner.image_url, title: @promo_banner.title } }
    end

    assert_redirected_to promo_banner_url(PromoBanner.last)
  end

  test "should show promo_banner" do
    get promo_banner_url(@promo_banner)
    assert_response :success
  end

  test "should get edit" do
    get edit_promo_banner_url(@promo_banner)
    assert_response :success
  end

  test "should update promo_banner" do
    patch promo_banner_url(@promo_banner), params: { promo_banner: { active: @promo_banner.active, description: @promo_banner.description, image_url: @promo_banner.image_url, title: @promo_banner.title } }
    assert_redirected_to promo_banner_url(@promo_banner)
  end

  test "should destroy promo_banner" do
    assert_difference("PromoBanner.count", -1) do
      delete promo_banner_url(@promo_banner)
    end

    assert_redirected_to promo_banners_url
  end
end
