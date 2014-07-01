class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.float :lat
      t.float :long
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
