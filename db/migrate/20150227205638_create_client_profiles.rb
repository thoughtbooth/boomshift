class CreateClientProfiles < ActiveRecord::Migration
  def change
    create_table :client_profiles do |t|
      t.string :fname
      t.string :lname
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
