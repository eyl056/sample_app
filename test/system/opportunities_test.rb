require "application_system_test_case"

class OpportunitiesTest < ApplicationSystemTestCase
  setup do
    @opportunity = opportunities(:one)
  end

  test "visiting the index" do
    visit opportunities_url
    assert_selector "h1", text: "Opportunities"
  end

  test "creating a Opportunity" do
    visit opportunities_url
    click_on "New Opportunity"

    fill_in "Confidence", with: @opportunity.confidence
    fill_in "Created at", with: @opportunity.created_at
    fill_in "Date", with: @opportunity.date
    fill_in "Estimated close", with: @opportunity.estimated_close
    fill_in "Notes", with: @opportunity.notes
    fill_in "Opportunity", with: @opportunity.opportunity_id
    fill_in "Value", with: @opportunity.value
    click_on "Create Opportunity"

    assert_text "Opportunity was successfully created"
    click_on "Back"
  end

  test "updating a Opportunity" do
    visit opportunities_url
    click_on "Edit", match: :first

    fill_in "Confidence", with: @opportunity.confidence
    fill_in "Created at", with: @opportunity.created_at
    fill_in "Date", with: @opportunity.date
    fill_in "Estimated close", with: @opportunity.estimated_close
    fill_in "Notes", with: @opportunity.notes
    fill_in "Opportunity", with: @opportunity.opportunity_id
    fill_in "Value", with: @opportunity.value
    click_on "Update Opportunity"

    assert_text "Opportunity was successfully updated"
    click_on "Back"
  end

  test "destroying a Opportunity" do
    visit opportunities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opportunity was successfully destroyed"
  end
end
