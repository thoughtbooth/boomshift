class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
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
