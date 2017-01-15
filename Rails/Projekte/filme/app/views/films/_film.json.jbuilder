json.extract! film, :id, :author, :title, :description, :published_on, :created_at, :updated_at
json.url film_url(film, format: :json)