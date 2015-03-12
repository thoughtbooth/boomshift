class AddUserIdToBusinessProfiles < ActiveRecord::Migration
  def change
    add_column :business_profiles, :user_id, :integer
    add_index :business_profiles, :user_id
  end
end
