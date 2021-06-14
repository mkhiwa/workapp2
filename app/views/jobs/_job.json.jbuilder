json.extract! job, :id, :consultant_id, :client_id, :employee_id, :start_time, :end_time, :work_hours, :total, :notes, :created_at, :updated_at
json.url job_url(job, format: :json)
