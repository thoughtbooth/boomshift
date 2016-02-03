class AddEmailConfirmColumnToClients < ActiveRecord::Migration
  def change
    add_column :clients, :email_confirmed, :boolean, default: false
    add_column :clients, :confirm_token, :string
  end
end
