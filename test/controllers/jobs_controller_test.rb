require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { client_id: @job.client_id, consultant_id: @job.consultant_id, employee_id: @job.employee_id, end_time: @job.end_time, notes: @job.notes, start_time: @job.start_time, total: @job.total, work_hours: @job.work_hours } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { client_id: @job.client_id, consultant_id: @job.consultant_id, employee_id: @job.employee_id, end_time: @job.end_time, notes: @job.notes, start_time: @job.start_time, total: @job.total, work_hours: @job.work_hours } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end