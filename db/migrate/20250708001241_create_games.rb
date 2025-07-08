class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :publisher
      t.decimal :price
      t.integer :release_year

      t.timestamps
    end
  end
end
