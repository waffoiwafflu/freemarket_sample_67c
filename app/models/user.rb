class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :address
  has_one :credits
  has_many :items
  has_many :comments
  has_many :sns_credentials, dependent: :destroy
  before_save { self.email = email.downcase }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
        #  , omniauth_providers: :google_oauth2
  
  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # sns認証したことがあればアソシエーションで取得
    # 無ければemailでユーザー検索して取得orビルド(保存はしない)
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
    # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
  # validates :encrypted_password,length: { minimum: ７ } 
  validates :first_name, :last_name,:first_name_kana, :last_name_kana, :phone_number, :nickname,presence: true
  # , unless: :uid?
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
