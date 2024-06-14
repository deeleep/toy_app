json.extract! microspost, :id, :content, :user_id, :created_at, :updated_at
json.url microspost_url(microspost, format: :json)
