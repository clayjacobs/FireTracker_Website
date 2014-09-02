class Submission
	include Mongoid::Document
	field :lat, type: Float
	field :long, type: Float
	field :image, type: Moped::BSON::Binary
    field :category, type: String
    field :time_submitted, type: Integer
    field :severity, type: String
end