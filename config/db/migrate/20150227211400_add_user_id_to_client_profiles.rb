class AddUserIdToClientProfiles < ActiveRecord::Migration
  def change
    add_column :client_profiles, :user_id, :integer
    add_index :client_profiles, :user_id
  end
end
