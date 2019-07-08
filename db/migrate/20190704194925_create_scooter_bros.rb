class CreateScooterBros < ActiveRecord::Migration[5.2]
  def change
    create_table :scooter_bros do |t|
      t.references :scooter, foreign_key: true
      t.references :bro, foreign_key: true

      t.timestamps
    end
  end
end
