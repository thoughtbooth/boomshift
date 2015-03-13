class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :job_date
      t.integer :status_id
      t.integer :enrollment_id

      t.timestamps
    end
    add_index :jobs, :status_id
    add_index :jobs, :enrollment_id
  end
end
