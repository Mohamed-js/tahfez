json.extract! student, :id, :name, :password, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
