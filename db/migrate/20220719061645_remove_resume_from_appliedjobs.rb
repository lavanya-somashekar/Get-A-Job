class RemoveResumeFromAppliedjobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :appliedjobs, :resume, :blob
  end
end
