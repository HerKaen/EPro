json.extract! lebensmittel, :id, :name, :menge, :eiweiß, :fett, :kohlenhydrate, :kalorien, :created_at, :updated_at
json.url lebensmittel_url(lebensmittel, format: :json)