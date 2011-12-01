class CreatePostsTags < ActiveRecord::Migration
  def up
    create_table :posts_tags, :force => true, :id => false  do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end
  end

  def down
    drop_table :posts_tags
  end
end
