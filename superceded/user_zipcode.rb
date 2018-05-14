class UserZipcode < ApplicationRecord

  validates :zipcode_id, presence: true
  validates :user_id, presence: true

  belongs_to :zipcode
  belongs_to :user
end
