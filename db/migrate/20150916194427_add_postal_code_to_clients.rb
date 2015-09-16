class AddPostalCodeToClients < ActiveRecord::Migration
  def change
    add_column :clients, :postal_code, :string
  end
end
