require "application_system_test_case"

class LeadStatusesTest < ApplicationSystemTestCase
  setup do
    @lead_status = lead_statuses(:one)
  end

  test "visiting the index" do
    visit lead_statuses_url
    assert_selector "h1", text: "Lead Statuses"
  end

  test "creating a Lead status" do
    visit lead_statuses_url
    click_on "New Lead Status"

    fill_in "Lead status", with: @lead_status.lead_status_id
    fill_in "Lead status name", with: @lead_status.lead_status_name
    click_on "Create Lead status"

    assert_text "Lead status was successfully created"
    click_on "Back"
  end

  test "updating a Lead status" do
    visit lead_statuses_url
    click_on "Edit", match: :first

    fill_in "Lead status", with: @lead_status.lead_status_id
    fill_in "Lead status name", with: @lead_status.lead_status_name
    click_on "Update Lead status"

    assert_text "Lead status was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead status" do
    visit lead_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead status was successfully destroyed"
  end
end
