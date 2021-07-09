require "application_system_test_case"

class LeadActivitiesTest < ApplicationSystemTestCase
  setup do
    @lead_activity = lead_activities(:one)
  end

  test "visiting the index" do
    visit lead_activities_url
    assert_selector "h1", text: "Lead Activities"
  end

  test "creating a Lead activity" do
    visit lead_activities_url
    click_on "New Lead Activity"

    fill_in "Activity type", with: @lead_activity.activity_type_id
    fill_in "Created at", with: @lead_activity.created_at
    fill_in "Created by", with: @lead_activity.created_by
    fill_in "Lead activity", with: @lead_activity.lead_activity_id
    fill_in "Lead email content", with: @lead_activity.lead_email_content
    fill_in "Lead email from", with: @lead_activity.lead_email_from
    fill_in "Lead email group", with: @lead_activity.lead_email_group_id
    fill_in "Lead email order", with: @lead_activity.lead_email_order
    fill_in "Lead email thread number", with: @lead_activity.lead_email_thread_number
    fill_in "Lead email title", with: @lead_activity.lead_email_title
    fill_in "Lead email to", with: @lead_activity.lead_email_to
    fill_in "Lead notes content", with: @lead_activity.lead_notes_content
    click_on "Create Lead activity"

    assert_text "Lead activity was successfully created"
    click_on "Back"
  end

  test "updating a Lead activity" do
    visit lead_activities_url
    click_on "Edit", match: :first

    fill_in "Activity type", with: @lead_activity.activity_type_id
    fill_in "Created at", with: @lead_activity.created_at
    fill_in "Created by", with: @lead_activity.created_by
    fill_in "Lead activity", with: @lead_activity.lead_activity_id
    fill_in "Lead email content", with: @lead_activity.lead_email_content
    fill_in "Lead email from", with: @lead_activity.lead_email_from
    fill_in "Lead email group", with: @lead_activity.lead_email_group_id
    fill_in "Lead email order", with: @lead_activity.lead_email_order
    fill_in "Lead email thread number", with: @lead_activity.lead_email_thread_number
    fill_in "Lead email title", with: @lead_activity.lead_email_title
    fill_in "Lead email to", with: @lead_activity.lead_email_to
    fill_in "Lead notes content", with: @lead_activity.lead_notes_content
    click_on "Update Lead activity"

    assert_text "Lead activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead activity" do
    visit lead_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead activity was successfully destroyed"
  end
end
