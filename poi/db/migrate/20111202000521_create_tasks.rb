class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :decription
      t.decimal :rate
      t.boolean :billable

      t.timestamps
    end
  end
end
