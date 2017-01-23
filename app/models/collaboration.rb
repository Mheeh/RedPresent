class Collaboration < ApplicationRecord
  validates_uniqueness_of :is_buyer, scope: [:present]
  validates_presence_of :part
	belongs_to :present
	belongs_to :user

  scope :buyer, -> { where(is_buyer: true) }
end
