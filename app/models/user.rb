class User < ActiveRecord::Base
  acts_as_paranoid
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :business
end

# DELETE THE BELOW

# Don't run this migration.  If I do, I won't be able to subclass InvoicingLedgerItems.  Instead, remove the model association between it and users (and clients), and then create my own dropdown selector for the UI.
# OR Put a question out on Stack Overflow asking why what I'm doing now isn't working.

#class RenameSenderAndRecipientInInvoiceLedgerItems < ActiveRecord::Migration
#  def change
#    rename_column :invoicing_ledger_items, :sender_id, :user_id
#    rename_column :invoicing_ledger_items, :recipient_id, :client_id
#  end
#end
