class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations, :id => false  do |t|
      t.integer :user_id
      t.integer :role_id
      t.string :assigned_by
      t.date :valid_until

      t.timestamps
    end
  end
end
