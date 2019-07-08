class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :brand

      t.timestamps
    end
  end
end
