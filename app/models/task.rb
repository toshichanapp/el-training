class Task < ApplicationRecord

  enum status: {untouched: 0, started: 1, completion: 2}
  enum priority: {normal: 0, high: 1, low: 2}
  validates :name, presence: true
  validates :body, presence: true

end
