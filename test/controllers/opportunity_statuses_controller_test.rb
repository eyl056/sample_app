require 'test_helper'

class OpportunityStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opportunity_status = opportunity_statuses(:one)
  end

  test "should get index" do
    get opportunity_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_opportunity_status_url
    assert_response :success
  end

  # test "should create opportunity_status" do
  #   assert_difference('OpportunityStatus.count') do
  #     post opportunity_statuses_url, params: { opportunity_status: { opportunity_status_id: @opportunity_status.opportunity_status_id, oppotunity_status_name: @opportunity_status.oppotunity_status_name, process: @opportunity_status.process } }
  #   end

  #   assert_redirected_to opportunity_status_url(OpportunityStatus.last)
  # end

  test "should show opportunity_status" do
    get opportunity_status_url(@opportunity_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_opportunity_status_url(@opportunity_status)
    assert_response :success
  end

  test "should update opportunity_status" do
    patch opportunity_status_url(@opportunity_status), params: { opportunity_status: { opportunity_status_id: @opportunity_status.opportunity_status_id, oppotunity_status_name: @opportunity_status.oppotunity_status_name, process: @opportunity_status.process } }
    assert_redirected_to opportunity_status_url(@opportunity_status)
  end

  test "should destroy opportunity_status" do
    assert_difference('OpportunityStatus.count', -1) do
      delete opportunity_status_url(@opportunity_status)
    end

    assert_redirected_to opportunity_statuses_url
  end
end
