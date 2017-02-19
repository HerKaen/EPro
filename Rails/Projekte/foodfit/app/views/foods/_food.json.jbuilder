json.extract! food, :id, :name, :menge, :einheit, :eiweiß, :fett, :kohlenhydrate, :kalorien, :created_at, :updated_at
json.url food_url(food, format: :json)