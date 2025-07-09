class AddActiveAndPlatformToGames < ActiveRecord::Migration[8.0]
  def change
    if table_exists?(:games)
      add_column :games, :active, :boolean, default: true unless column_exists?(:games, :active)
      add_column :games, :platform, :string unless column_exists?(:games, :platform)
    end
  end
end
