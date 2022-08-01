class AddColumnsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :company_name, :string
    add_column :jobs, :pay, :string
  end
end
