class AddActiveToUsers < ActiveRecord::Migration[8.0]
  def change
    if table_exists?(:users)
      add_column :users, :active, :boolean, default: true unless column_exists?(:users, :active)
    end
  end
end
