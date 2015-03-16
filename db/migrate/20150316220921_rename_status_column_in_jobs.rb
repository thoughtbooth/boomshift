class RenameStatusColumnInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :status_id, :job_status_id
  end
end
