class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :payment_to, class_name: "User"
end
