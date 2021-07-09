require 'test_helper'

class LeadActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead_activity = lead_activities(:one)
  end

  test "should get index" do
    get lead_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_activity_url
    assert_response :success
  end

  test "should create lead_activity" do
    assert_difference('LeadActivity.count') do
      post lead_activities_url, params: { lead_activity: { activity_type_id: @lead_activity.activity_type_id, created_at: @lead_activity.created_at, created_by: @lead_activity.created_by, lead_activity_id: @lead_activity.lead_activity_id, lead_email_content: @lead_activity.lead_email_content, lead_email_from: @lead_activity.lead_email_from, lead_email_group_id: @lead_activity.lead_email_group_id, lead_email_order: @lead_activity.lead_email_order, lead_email_thread_number: @lead_activity.lead_email_thread_number, lead_email_title: @lead_activity.lead_email_title, lead_email_to: @lead_activity.lead_email_to, lead_notes_content: @lead_activity.lead_notes_content } }
    end

    assert_redirected_to lead_activity_url(LeadActivity.last)
  end

  test "should show lead_activity" do
    get lead_activity_url(@lead_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_activity_url(@lead_activity)
    assert_response :success
  end

  test "should update lead_activity" do
    patch lead_activity_url(@lead_activity), params: { lead_activity: { activity_type_id: @lead_activity.activity_type_id, created_at: @lead_activity.created_at, created_by: @lead_activity.created_by, lead_email_content: @lead_activity.lead_email_content, lead_email_from: @lead_activity.lead_email_from, lead_email_group_id: @lead_activity.lead_email_group_id, lead_email_order: @lead_activity.lead_email_order, lead_email_thread_number: @lead_activity.lead_email_thread_number, lead_email_title: @lead_activity.lead_email_title, lead_email_to: @lead_activity.lead_email_to, lead_notes_content: @lead_activity.lead_notes_content } }
    assert_redirected_to lead_activity_url(@lead_activity)
  end

  test "should destroy lead_activity" do
    assert_difference('LeadActivity.count', -1) do
      delete lead_activity_url(@lead_activity)
    end

    assert_redirected_to lead_activities_url
  end
end
