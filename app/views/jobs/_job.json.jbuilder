json.extract! job, :id, :job_title, :skills, :job_description, :job_type, :created_at, :updated_at
json.url job_url(job, format: :json)
