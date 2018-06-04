class Task < ApplicationRecord

  enum status: { untoched: 0, started: 1, completion: 2 }
  enum priority: { high: 0, normal: 1 ,low:2}
  validates :name, presence: true
  validates :body, presence: true

end
