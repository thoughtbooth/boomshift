class CreateJoinTableClientService < ActiveRecord::Migration
  def change
    create_join_table :clients, :services do |t|
      t.index [:client_id, :service_id]
      t.index [:service_id, :client_id]
      t.text :preferences
      
      t.timestamps
    end
  end
end
