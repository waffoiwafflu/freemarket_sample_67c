class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :zipcode, :region ,:municipality, :street_mansion, presence: true
  validates :zipcode,
  format: {
    with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}$|^\d{5}$|^\d{7}\z/,
    message: "ち・が・い・ま・すー!!!"
  }

end
