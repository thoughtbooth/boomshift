class AddContactNameToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :contact_name, :string
  end
end
