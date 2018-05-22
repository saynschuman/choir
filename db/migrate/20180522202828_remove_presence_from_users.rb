class RemovePresenceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :presence, :boolean
  end
end
