json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :url, :name, :date_saved
  json.url bookmark_url(bookmark, format: :json)
end