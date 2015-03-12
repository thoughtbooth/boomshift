class AddBusinessIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :business_id, :integer
    add_index :services, :business_id
  end
end
