class AddNumberToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :number, :integer
  end
end
