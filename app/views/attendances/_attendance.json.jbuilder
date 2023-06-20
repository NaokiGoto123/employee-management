json.extract! attendance, :id, :user_id, :worked, :absence_type, :date, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
