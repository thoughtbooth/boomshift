class CreateJobStatuses < ActiveRecord::Migration
  def change
    create_table :job_statuses do |t|
      t.string :status
      t.integer :job_id

      t.timestamps
    end
    add_index :job_statuses, :job_id
  end
end
