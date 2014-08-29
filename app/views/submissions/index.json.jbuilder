json.array!(@submissions) do |submission|
  json.extract! submission, :id, :lat, :long, :image, :category, :time_submitted
  json.url submission_url(submission, format: :json)
end
