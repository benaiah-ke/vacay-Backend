class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :destination
      t.string :image_url
      t.string :meals
      t.string :activities
      t.integer :price

      t.timestamps
    end
  end
end
