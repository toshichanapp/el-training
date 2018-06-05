class Task < ApplicationRecord

  enum status: {untouched: 0, started: 1, completion: 2}
  enum priority: {low: 0, normal: 1, high: 2}
  validates :name, presence: true
  validates :body, presence: true

end
