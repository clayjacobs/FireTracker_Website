class calfire < ActiveRecord::Base
	include MongoMapper::Document
  field :lat, type:float
  field :long, type:float
end