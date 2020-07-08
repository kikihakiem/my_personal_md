json.extract! hospital, :id, :name, :created_at, :updated_at
json.url admin_hospital_url(hospital, format: :json)
