class Submission
	include Mongoid::Document
	field :lat, type: Float
	field :long, type: Float
	#field :image, type: Moped::BSON::Binary
    field :category, type: String


  def initialize(lat, long, category, image=nil)
  end

end