class BugModel < ApplicationRecord
  belongs_to :user, optional: false
  enum issue_type: [:issue, :enhancement, :feature]
  enum priority: [:low, :medium, :high]
  enum status: [:open, :closed, :monitor]

  validates :title, presence: true, length: {minimum: 5, maximum: 15}
  validates :description, presence: true, length: {minimum: 20, maximum: 600}
end
