require "application_system_test_case"

class PromoBannersTest < ApplicationSystemTestCase
  setup do
    @promo_banner = promo_banners(:one)
  end

  test "visiting the index" do
    visit promo_banners_url
    assert_selector "h1", text: "Promo banners"
  end

  test "should create promo banner" do
    visit promo_banners_url
    click_on "New promo banner"

    check "Active" if @promo_banner.active
    fill_in "Description", with: @promo_banner.description
    fill_in "Image url", with: @promo_banner.image_url
    fill_in "Title", with: @promo_banner.title
    click_on "Create Promo banner"

    assert_text "Promo banner was successfully created"
    click_on "Back"
  end

  test "should update Promo banner" do
    visit promo_banner_url(@promo_banner)
    click_on "Edit this promo banner", match: :first

    check "Active" if @promo_banner.active
    fill_in "Description", with: @promo_banner.description
    fill_in "Image url", with: @promo_banner.image_url
    fill_in "Title", with: @promo_banner.title
    click_on "Update Promo banner"

    assert_text "Promo banner was successfully updated"
    click_on "Back"
  end

  test "should destroy Promo banner" do
    visit promo_banner_url(@promo_banner)
    click_on "Destroy this promo banner", match: :first

    assert_text "Promo banner was successfully destroyed"
  end
end
