class Category
  include MongoMapper::Document
  def change
    create_table :categories do |t|
      t.column :name, :string
    end
    Category.create :name => "Trash"
    Category.create :name => "Wild"
    Category.create :name => "House"
    Category.create :name => "Other"
  end
end