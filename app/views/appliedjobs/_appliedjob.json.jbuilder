json.extract! appliedjob, :id, :resume, :status, :job_id, :user_id, :created_at, :updated_at
json.url appliedjob_url(appliedjob, format: :json)
