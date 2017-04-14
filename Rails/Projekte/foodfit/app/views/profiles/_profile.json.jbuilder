json.extract! profile, :id, :user_id, :calculator_id, :food_id, :fooddiary_id, :sport_id, :sportdiary_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)