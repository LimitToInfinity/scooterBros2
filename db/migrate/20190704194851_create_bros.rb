class CreateBros < ActiveRecord::Migration[5.2]
  def change
    create_table :bros do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
