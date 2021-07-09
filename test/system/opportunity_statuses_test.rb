require "application_system_test_case"

class OpportunityStatusesTest < ApplicationSystemTestCase
  setup do
    @opportunity_status = opportunity_statuses(:one)
  end

  test "visiting the index" do
    visit opportunity_statuses_url
    assert_selector "h1", text: "Opportunity Statuses"
  end

  test "creating a Opportunity status" do
    visit opportunity_statuses_url
    click_on "New Opportunity Status"

    fill_in "Opportunity status", with: @opportunity_status.opportunity_status_id
    fill_in "Oppotunity status name", with: @opportunity_status.oppotunity_status_name
    fill_in "Process", with: @opportunity_status.process
    click_on "Create Opportunity status"

    assert_text "Opportunity status was successfully created"
    click_on "Back"
  end

  test "updating a Opportunity status" do
    visit opportunity_statuses_url
    click_on "Edit", match: :first

    fill_in "Opportunity status", with: @opportunity_status.opportunity_status_id
    fill_in "Oppotunity status name", with: @opportunity_status.oppotunity_status_name
    fill_in "Process", with: @opportunity_status.process
    click_on "Update Opportunity status"

    assert_text "Opportunity status was successfully updated"
    click_on "Back"
  end

  test "destroying a Opportunity status" do
    visit opportunity_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opportunity status was successfully destroyed"
  end
end
