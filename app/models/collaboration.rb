class Collaboration < ApplicationRecord
  validates_uniqueness_of :is_buyer, scope: [:present]

	belongs_to :present
	belongs_to :user
end
