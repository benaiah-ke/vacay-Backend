class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :adults
      t.integer :kids
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user 
      t.belongs_to :destination 

      t.timestamps
    end
  end
end
