class AddBusinessIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :business_id, :integer
    add_index :clients, :business_id
  end
end
