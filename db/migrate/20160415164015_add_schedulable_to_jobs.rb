class AddSchedulableToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :schedulable, polymorphic: true
  end
end
