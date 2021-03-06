class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :description, null: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
