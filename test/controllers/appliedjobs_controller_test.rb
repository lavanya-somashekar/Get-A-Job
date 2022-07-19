require "test_helper"

class AppliedjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appliedjob = appliedjobs(:one)
  end

  test "should get index" do
    get appliedjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_appliedjob_url
    assert_response :success
  end

  test "should create appliedjob" do
    assert_difference("Appliedjob.count") do
      post appliedjobs_url, params: { appliedjob: { job_id: @appliedjob.job_id, resume: @appliedjob.resume, status: @appliedjob.status, user_id: @appliedjob.user_id } }
    end

    assert_redirected_to appliedjob_url(Appliedjob.last)
  end

  test "should show appliedjob" do
    get appliedjob_url(@appliedjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_appliedjob_url(@appliedjob)
    assert_response :success
  end

  test "should update appliedjob" do
    patch appliedjob_url(@appliedjob), params: { appliedjob: { job_id: @appliedjob.job_id, resume: @appliedjob.resume, status: @appliedjob.status, user_id: @appliedjob.user_id } }
    assert_redirected_to appliedjob_url(@appliedjob)
  end

  test "should destroy appliedjob" do
    assert_difference("Appliedjob.count", -1) do
      delete appliedjob_url(@appliedjob)
    end

    assert_redirected_to appliedjobs_url
  end
end
