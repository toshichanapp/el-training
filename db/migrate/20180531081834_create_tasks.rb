class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :body
      t.datetime :limits
      t.integer :status
      t.integer :priority
      t.timestamps
    end
  end
end
