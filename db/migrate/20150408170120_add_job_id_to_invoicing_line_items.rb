class AddJobIdToInvoicingLineItems < ActiveRecord::Migration
  def change
    add_column :invoicing_line_items, :job_id, :integer
    add_index :invoicing_line_items, :job_id
  end
end
