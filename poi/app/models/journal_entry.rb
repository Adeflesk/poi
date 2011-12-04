class JournalEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_one :task
end
