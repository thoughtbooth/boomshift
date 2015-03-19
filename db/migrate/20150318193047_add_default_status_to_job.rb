class AddDefaultStatusToJob < ActiveRecord::Migration
  def change
    change_column :jobs, :job_status_id, :integer, :default => 1
  end
end
