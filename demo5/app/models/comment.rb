class Comment < ActiveRecord::Base
  validates_presence_of :body
  validates_presence_of :author

  belongs_to :post
end
