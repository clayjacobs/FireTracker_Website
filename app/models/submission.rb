class Submission
	include Mongoid::Document
	field :lat, type: Float
	field :long, type: Float
	field :image
  has_one :category


  def initialize(lat, long, category, image=nil)
  end

end
