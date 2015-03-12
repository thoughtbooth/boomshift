class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :about
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
