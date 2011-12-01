class PostStatus < ActiveRecord::Base
  validates_inclusion_of :description, :in => %w(published offline draft), :on =>:create, :message => "Invalid status"
  validates_uniqueness_of :description
end
