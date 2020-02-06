class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :address
  has_one :credits
  has_many :items
  has_many :comments
  before_save { self.email = email.downcase }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
  # validates :encrypted_password,length: { minimum: ７ } 
  validates :first_name, :last_name,:first_name_kana, :last_name_kana, :phone_number, :nickname,presence: true




end
