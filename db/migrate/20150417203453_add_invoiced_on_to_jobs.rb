class AddInvoicedOnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :invoiced_on, :datetime
  end
end
