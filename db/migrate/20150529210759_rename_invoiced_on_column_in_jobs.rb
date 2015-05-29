class RenameInvoicedOnColumnInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :invoiced_on, :billed_on
  end
end
