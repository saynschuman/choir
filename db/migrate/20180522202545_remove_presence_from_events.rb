class RemovePresenceFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :presence, :boolean
  end
end
