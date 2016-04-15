class ChangeJobDateInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :job_date, :date
  end
end
