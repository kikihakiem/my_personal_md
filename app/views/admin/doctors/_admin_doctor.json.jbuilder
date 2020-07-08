json.extract! doctor, :id, :name, :created_at, :updated_at
json.url admin_doctor_url(doctor, format: :json)
