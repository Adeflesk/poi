class AddStatusAndSlugRenameAuthor < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.rename :author, :author_name
      t.string :status
      t.string :slug
    end


  end

  def down
    change_table :posts do |t|
      t.remove_column :status
      t.remove_column :slug
      t.rename :auther_name, :author
    end

  end
end
