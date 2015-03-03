class AddUserIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :user_id, :integer
    add_index :businesses, :user_id
  end
end
