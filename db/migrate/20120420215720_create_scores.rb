class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :user
      t.references :exercise
      t.integer :attempts
      t.integer :correctness

      t.timestamps
    end
    add_index :scores, :user_id
    add_index :scores, :exercise_id
  end
end
