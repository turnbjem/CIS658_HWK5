json.extract! user, :id, :email, :lname, :fname, :thumbnail, :created_at, :updated_at
json.url user_url(user, format: :json)
