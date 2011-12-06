class ChangeDecriptionToDescriptionOnTasks < ActiveRecord::Migration
  def up
    change_table :tasks do |t|
      t.rename :decription, :description
    end
  end

  def down
    change_table :tasks do |t|
      t.rename :decription, :description
  end
end
end
