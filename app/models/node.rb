class Node < ApplicationRecord
  belongs_to :user
  belongs_to :headend
  validates :node, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }
  validates :txlocation, presence: true
  validates :headend, presence: true
  has_many_attached :documents

  scope :upcoming, ->{ where('cutdate BETWEEN ? AND ?', Date.current, 30.days.from_now) }
  scope :cut_complete, ->{ where("cut_complete =?", true) }

end
