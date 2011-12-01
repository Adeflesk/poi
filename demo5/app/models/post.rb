class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :tags 
validates_presence_of :title
validates_presence_of :body, :message => "Can't have a post without a body"
#must have a draft status on create
validate :must_have_draft_status_on_create
#some-title-made-url-readable
#validates_presence_of :slug, if => :a_nice_slug_validation_method 
#callbacks
before_validation :set_default_status,:if => "self.post_status_id.nil?"
def set_default_status
  self.post_status_id = 3
end
def a_nice_slug_validation_method
  #put the logic here
end
def must_have_draft_status_on_create
  errors[:post_status_id] << "Must be draft on create" unless self.post_status_id == 3
end
end
