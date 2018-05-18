class AddPresenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :presence, :boolean, default: false
  end
end
