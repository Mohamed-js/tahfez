json.extract! teacher, :id, :name, :email, :phone, :password, :about, :zoom_link, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
