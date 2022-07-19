class RemoveUsersIdFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :users_id, :integer
  end
end
