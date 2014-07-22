class Subcategory
  include Mongoid::Document
  belongs_to :submission
  field :subcat, type: String
end
