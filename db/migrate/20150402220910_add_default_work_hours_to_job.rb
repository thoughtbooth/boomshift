class AddDefaultWorkHoursToJob < ActiveRecord::Migration
  def change
    change_column :jobs, :hours_worked, :decimal, default: 0.00
  end
end
