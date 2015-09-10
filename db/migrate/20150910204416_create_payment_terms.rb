class CreatePaymentTerms < ActiveRecord::Migration
  def change
    create_table :payment_terms do |t|
      t.integer :days_to_pay
      t.integer :business_id
      
      t.timestamps
    end
  end
end
