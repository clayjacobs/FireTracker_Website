class Submission < ActiveRecord::Base
	include Mongoid::Document
	field :lat, type: float
	field :long, type: float
	field :image
  has_one :category
end
