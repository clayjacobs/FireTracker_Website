class Submission
	include MongoMapper::Document
	field :lat, type: float
	field :long, type: float
	field :image
  has_one :category
end
