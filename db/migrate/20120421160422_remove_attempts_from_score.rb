class RemoveAttemptsFromScore < ActiveRecord::Migration
  def up
    rename_column :scores, :attempts, :rating
  end

end
