json.extract! fooddiary, :id, :anzahl, :datum, :food_id, :created_at, :updated_at
json.url fooddiary_url(fooddiary, format: :json)