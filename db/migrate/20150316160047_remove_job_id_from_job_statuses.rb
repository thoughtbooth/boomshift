class RemoveJobIdFromJobStatuses < ActiveRecord::Migration
  def change
    remove_column :job_statuses, :job_id, :integer
  end
end
