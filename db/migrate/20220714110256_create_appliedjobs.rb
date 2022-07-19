class CreateAppliedjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :appliedjobs do |t|
      t.blob :resume
      t.integer :status
      t.references :job, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
