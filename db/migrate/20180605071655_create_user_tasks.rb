class CreateUserTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tasks do |t|
      t.integer :user_id, index: true, foreign_key: true
      t.integer :task_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
