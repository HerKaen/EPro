json.extract! user, :id, :name, :email, :age, :start_weight, :height, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)