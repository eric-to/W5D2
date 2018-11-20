class AddUsernameIndexforUser < ActiveRecord::Migration[5.2]
  def change
    remove_index :users, :password_digest
    add_index :users, :username, unique: true 
  end
end
