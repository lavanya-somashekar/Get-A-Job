class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :skills
      t.text :job_description
      t.integer :job_type

      t.timestamps
    end
  end
end
