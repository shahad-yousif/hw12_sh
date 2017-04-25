json.extract! doctor, :id, :first_name, :last_name, :license_no, :email, :phone_number, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)