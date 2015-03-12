class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :clients_services, :enrollments
  end
end
