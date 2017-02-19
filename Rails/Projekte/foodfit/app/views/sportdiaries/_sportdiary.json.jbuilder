json.extract! sportdiary, :id, :datum, :anzahl, :sport_id, :created_at, :updated_at
json.url sportdiary_url(sportdiary, format: :json)