class Project < ActiveRecord::Base
  belongs_to :client
  has_many :tasks, :autosave => true
  validates_numericality_of :budget
  validates_presence_of :name

  validates_presence_of :client_id

  before_validation :on => :create do
    default_tasks
  end

  def default_tasks
    if self.tasks.count == 0
      self.tasks << Task.find_by_name('admin')
      self.tasks << Task.find_by_name('development')
      self.tasks << Task.find_by_name('support')
    end
  end
end
