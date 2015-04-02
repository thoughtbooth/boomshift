class AddHoursWorkedToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :hours_worked, :decimal
  end
end
