class AddCompletedOnAndPaidOnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :completed_on, :datetime
    add_column :jobs, :paid_on, :datetime
  end
end
