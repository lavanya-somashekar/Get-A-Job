require "application_system_test_case"

class AppliedjobsTest < ApplicationSystemTestCase
  setup do
    @appliedjob = appliedjobs(:one)
  end

  test "visiting the index" do
    visit appliedjobs_url
    assert_selector "h1", text: "Appliedjobs"
  end

  test "should create appliedjob" do
    visit appliedjobs_url
    click_on "New appliedjob"

    fill_in "Job", with: @appliedjob.job_id
    fill_in "Resume", with: @appliedjob.resume
    fill_in "Status", with: @appliedjob.status
    fill_in "User", with: @appliedjob.user_id
    click_on "Create Appliedjob"

    assert_text "Appliedjob was successfully created"
    click_on "Back"
  end

  test "should update Appliedjob" do
    visit appliedjob_url(@appliedjob)
    click_on "Edit this appliedjob", match: :first

    fill_in "Job", with: @appliedjob.job_id
    fill_in "Resume", with: @appliedjob.resume
    fill_in "Status", with: @appliedjob.status
    fill_in "User", with: @appliedjob.user_id
    click_on "Update Appliedjob"

    assert_text "Appliedjob was successfully updated"
    click_on "Back"
  end

  test "should destroy Appliedjob" do
    visit appliedjob_url(@appliedjob)
    click_on "Destroy this appliedjob", match: :first

    assert_text "Appliedjob was successfully destroyed"
  end
end
