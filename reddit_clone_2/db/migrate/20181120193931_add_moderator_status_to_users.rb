class AddModeratorStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mod_status, :integer
  end
end
