class Headend < ApplicationRecord
  has_many :nodes, inverse_of: :headend
  validates :headend, presence: true
end
