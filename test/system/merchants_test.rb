require "application_system_test_case"

class MerchantsTest < ApplicationSystemTestCase
  setup do
    @merchant = merchants(:one)
  end

  test "visiting the index" do
    visit merchants_url
    assert_selector "h1", text: "Merchants"
  end

  test "creating a Merchant" do
    visit merchants_url
    click_on "New Merchant"

    fill_in "Disbursement frequency", with: @merchant.disbursement_frequency
    fill_in "Email", with: @merchant.email
    fill_in "Live on", with: @merchant.live_on
    fill_in "Minimum monthly", with: @merchant.minimum_monthly
    fill_in "Reference", with: @merchant.reference
    click_on "Create Merchant"

    assert_text "Merchant was successfully created"
    click_on "Back"
  end

  test "updating a Merchant" do
    visit merchants_url
    click_on "Edit", match: :first

    fill_in "Disbursement frequency", with: @merchant.disbursement_frequency
    fill_in "Email", with: @merchant.email
    fill_in "Live on", with: @merchant.live_on
    fill_in "Minimum monthly", with: @merchant.minimum_monthly
    fill_in "Reference", with: @merchant.reference
    click_on "Update Merchant"

    assert_text "Merchant was successfully updated"
    click_on "Back"
  end

  test "destroying a Merchant" do
    visit merchants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merchant was successfully destroyed"
  end
end
