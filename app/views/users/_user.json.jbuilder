json.extract! user, :id, :first_name, :email, :password_digest, :city, :email_verify, :created_at, :updated_at
json.url user_url(user, format: :json)
