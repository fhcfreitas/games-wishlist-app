class CreateWishilistItems < ActiveRecord::Migration[8.0]
  def change
    create_table :wishlist_items do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.timestamps
    end

    add_index :wishlist_items, [:wishlist_id, :game_id], unique: true
  end
end
