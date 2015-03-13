json.array!(@jobs) do |job|
  json.extract! job, :id, :job_date, :status_id, :enrollment_id
  json.url job_url(job, format: :json)
end
