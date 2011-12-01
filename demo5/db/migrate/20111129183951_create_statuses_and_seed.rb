class CreateStatusesAndSeed < ActiveRecord::Migration
  class PostStatus < ActiveRecord::Base

  end
  def up
    create_table :post_statuses, :force => true do |t|
      t.string :description
      t.timestamps
    end
    PostStatus.create!(:description => "published")
    
    PostStatus.create!(:description => "offline")
  end
  
  change_table :posts do |t|
    t.remove :status
    t.references :post_status
  end

  def down
    change_table :posts do |t|
      t.remove :post_status_id
     t.string :status
    end
    drop_table :post_statuses
  end
end
