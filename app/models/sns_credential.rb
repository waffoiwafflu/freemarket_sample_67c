class SnsCredential < ApplicationRecord
  belongs_to :user, optional: true
  validates :provider, :uid, :user_id,presence: true
end
