json.extract! success, :id, :body_id, :user_id, :created_at, :updated_at
json.url success_url(success, format: :json)