class User < ApplicationRecord
	has_many :collaborations
	has_many :presents, through: :collaborations
	has_many :payments
	has_many :balances
end
