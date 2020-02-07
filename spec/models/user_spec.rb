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
describe Item do
    describe '#create' do
      it "nameが空では登録不可" do
        item = build(:item, name: "aaa")
        item.valid?
        expect(product.errors[:name]).to include("を入力してください")
      end
  
      it "nameが不適切ワードでは登録不可" do
        product = build(:product, name: "aaa")
        product.valid?
        expect(product.errors[:name]).to include("に不適切な単語が含まれています")
      end
  
      it "detailが空では登録不可" do
        product = build(:product, detail: "")
        product.valid?
        expect(product.errors[:detail]).to include("を入力してください")
      end
  
      it "detailが不適切ワードでは登録不可" do
        product = build(:product, detail: "アホ")
        product.valid?
        expect(product.errors[:detail]).to include("に不適切な単語が含まれています")
      end
  
      it "categoryが空では登録不可" do
        product = build(:product, category: "")
        product.valid?
        expect(product.errors[:category]).to include("を入力してください")
      end
  
      it "priceが空では登録不可" do
        product = build(:product, price: "")
        product.valid?
        expect(product.errors[:price]).to include("を入力してください")
      end
  
      it "statusが空では登録不可" do
        product = build(:product, status: "")
        product.valid?
        expect(product.errors[:status]).to include("を入力してください")
      end
  
      it "stateが空では登録不可" do
        product = build(:product, state: "")
        product.valid?
        expect(product.errors[:state]).to include("を入力してください")
      end
  
      it "cityが空では登録不可" do
        product = build(:product, city: "")
        product.valid?
        expect(product.errors[:city]).to include("を入力してください")
      end
  
      it "deliveryが空では登録不可" do
        product = build(:product, delivery: "")
        product.valid?
        expect(product.errors[:delivery]).to include("を入力してください")
      end
      
      it "delivery_timeが空では登録不可" do
        product = build(:product, delivery_time: "")
        product.valid?
        expect(product.errors[:delivery_time]).to include("を入力してください")
      end
  
      it "fee_payerが空では登録不可" do
        product = build(:product, fee_payer: "")
        product.valid?
        expect(product.errors[:fee_payer]).to include("を入力してください")
      end
  
      it "すべて満たしていれば登録可" do
        product = create(:product)
        expect(product).to be_valid
      end
  
  
    end
  end