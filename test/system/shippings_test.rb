require "application_system_test_case"

class ShippingsTest < ApplicationSystemTestCase
  setup do
    @shipping = shippings(:one)
  end

  test "visiting the index" do
    visit shippings_url
    assert_selector "h1", text: "Shippings"
  end

  test "should create shipping" do
    visit shippings_url
    click_on "New shipping"

    fill_in "Created at", with: @shipping.created_at
    fill_in "Order", with: @shipping.order_id
    fill_in "Pickup location", with: @shipping.pickup_location
    fill_in "Status", with: @shipping.status
    click_on "Create Shipping"

    assert_text "Shipping was successfully created"
    click_on "Back"
  end

  test "should update Shipping" do
    visit shipping_url(@shipping)
    click_on "Edit this shipping", match: :first

    fill_in "Created at", with: @shipping.created_at.to_s
    fill_in "Order", with: @shipping.order_id
    fill_in "Pickup location", with: @shipping.pickup_location
    fill_in "Status", with: @shipping.status
    click_on "Update Shipping"

    assert_text "Shipping was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipping" do
    visit shipping_url(@shipping)
    click_on "Destroy this shipping", match: :first

    assert_text "Shipping was successfully destroyed"
  end
end
