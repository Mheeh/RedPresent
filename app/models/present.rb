class Present < ApplicationRecord
	has_many :collaborations
	has_many :users, through: :collaborations
  #has_one :buyer,->(collaboration) { where collaboration.is_buyer: true}, class_name: 'User'
  #has_one :buyer,->(present) { joins(users: :collaborations).where("collabrations.present_id": present.id)}, class_name: 'User'

  def buyer
    collaborations.buyer.first.user
  end

end
