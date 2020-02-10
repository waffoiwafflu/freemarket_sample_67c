require 'rails_helper'

  RSpec.describe Sns_Credential, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"
    sns_credential = FactoryBot.build(:sns_credential)

    it "入力確認" do
      sns_credential = build(:sns_credential, provider: nil, uid: nil, user_id: nil)
      sns_credential.valid?
      expect(sns_credential.errors[:provider, :uid, :user_id]).to include("うまくいきません")
    end
  
end
