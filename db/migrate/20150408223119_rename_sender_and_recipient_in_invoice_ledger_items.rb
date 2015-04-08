class RenameSenderAndRecipientInInvoiceLedgerItems < ActiveRecord::Migration
  def change
    rename_column :invoicing_ledger_items, :sender_id, :user_id
    rename_column :invoicing_ledger_items, :recipient_id, :client_id
  end
end
