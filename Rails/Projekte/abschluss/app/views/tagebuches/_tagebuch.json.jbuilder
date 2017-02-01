json.extract! tagebuch, :id, :name, :menge, :eiweiß, :fett, :kohlenhydrate, :kalorien, :anzahl, :created_at, :updated_at
json.url tagebuch_url(tagebuch, format: :json)