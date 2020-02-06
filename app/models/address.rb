class Address < ApplicationRecord
  belongs_to :user, optional: true
  # validates :zipcode, :rejion ,:municipality true
end
