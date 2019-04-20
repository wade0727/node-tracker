class Node < ApplicationRecord
  belongs_to :user
  belongs_to :headend
  validates :node, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }
  validates :txlocation, presence: true
  validates :headend, presence: true
  has_many_attached :documents
end
