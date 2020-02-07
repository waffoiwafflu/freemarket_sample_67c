require 'rails_helper'
    # RSpec.describe User, type: :model do
    #   user = FactoryBot.build(:user)

    #   it "入力確認" do
    #     user = build(:user, email: nil)
    #     user.valid?
    #     expect(user.errors[:email]).to include("can't be blank")
    #   end


    #   it "大文字小文字変換" do
    #     mixed_case_email = "MORIMORIPCPC@example.com"
    #     user.email = mixed_case_email
    #     user.save
    #     expect(user[:email]).to eq("morimoripcpc@example.com")
    #   end

    #   it "名前とメールアドレスとパスワードがあれば登録できる" do 
    #     expect(FactoryBot.create(:user)).to be_valid
    #   end 

    #   it "メールアドレスが重複していたら登録できない" do 
    #     user1 = FactoryBot.create(
    #       :user,
    #       first_name: "w", 
    #       last_name: "w",
    #       first_name_kana: "w",
    #       last_name_kana: "w",
    #       year: "2020-02-05 00:00:01",
    #       phone_number: "sdf",
    #       nickname: "wert",
    #       email: "taro@example.com"
    #       )
    #     expect(FactoryBot.build(
    #       :user, 
    #       first_name: "wrty",
    #       last_name: "wdghfg",
    #       first_name_kana: "wfdg",
    #       last_name_kana: "wdsfgd",
    #       year: "2020-02-05 00:00:02",
    #       phone_number: "sdffg",
    #       nickname: "werbht",
    #       email: user1.email)).to_not be_valid
    #   end 

    #   it "password_confirmationとpasswordが異なる場合保存できない" do 
    #     expect(FactoryBot.build(:user,password:"password",password_confirmation: "passward")).to_not be_valid 
    #   end 

    #   it "パスワードがなければ登録できない" do 
    #     expect(FactoryBot.build(:user, password: "")).to_not be_valid 
    #   end 
    

# end