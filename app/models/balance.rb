class Balance < ApplicationRecord
	belongs_to :user
	belongs_to :debt_to, class_name: "User"
end
