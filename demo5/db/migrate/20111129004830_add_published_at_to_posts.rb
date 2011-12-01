class AddPublishedAtToPosts < ActiveRecord::Migration
  def  up
    add_column :posts, :published_at, :date
  end
  def down
    remove_column :posts, :published_at
  end
end
