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
  validates :first_name_kana,:last_name_kana,
                 format: {
                   with: /\A[ァ-ヶー－]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }
  validates :first_name,:last_name,
                 format: {
                   with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
                   message: "全角で入力して下さい"
                 }
  validates :phone_number,
                 format: {
                   with: /\A\d{10,11}\z/,
                   message: "数値で入力して下さい"
                 }



end
