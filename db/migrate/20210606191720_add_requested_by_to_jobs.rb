class AddRequestedByToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :requested_by, :string
  end
end
