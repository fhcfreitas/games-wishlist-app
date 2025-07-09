class CreateWishilistItems < ActiveRecord::Migration[8.0]
  def change
    create_table :wishilist_items do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
