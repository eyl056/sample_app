require "application_system_test_case"

class ContactDetailsTest < ApplicationSystemTestCase
  setup do
    @contact_detail = contact_details(:one)
  end

  test "visiting the index" do
    visit contact_details_url
    assert_selector "h1", text: "Contact Details"
  end

  test "creating a Contact detail" do
    visit contact_details_url
    click_on "New Contact Detail"

    fill_in "Contact detail info", with: @contact_detail.contact_detail_info
    fill_in "Contact detail type", with: @contact_detail.contact_detail_type
    fill_in "Contact", with: @contact_detail.contact_id
    click_on "Create Contact detail"

    assert_text "Contact detail was successfully created"
    click_on "Back"
  end

  test "updating a Contact detail" do
    visit contact_details_url
    click_on "Edit", match: :first

    fill_in "Contact detail info", with: @contact_detail.contact_detail_info
    fill_in "Contact detail type", with: @contact_detail.contact_detail_type
    fill_in "Contact", with: @contact_detail.contact_id
    click_on "Update Contact detail"

    assert_text "Contact detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact detail" do
    visit contact_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact detail was successfully destroyed"
  end
end
