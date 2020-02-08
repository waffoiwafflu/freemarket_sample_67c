require 'rails_helper'

describe Item do
  describe '#create' do
    it "nameが空では登録不可" do
      item = build(:item, name: "aaa")
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "detailが空では登録不可" do
      item = build(:item, detail: "aiue")
      item.valid?
      expect(item.errors[:detail]).to include("を入力してください")
    end

    it "priceが空では登録不可" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "statusが空では登録不可" do
      item = build(:item, status: "")
      item.valid?
      expect(item.errors[:status]).to include("を入力してください")
    end

    it "addressが空では登録不可" do
      item = build(:item, address: "")
      item.valid?
      expect(item.errors[:address]).to include("を入力してください")
    end

    it "deliveryが空では登録不可" do
      item = build(:item, delivery: "")
      item.valid?
      expect(item.errors[:delivery]).to include("を入力してください")
    end

    it "すべて満たしていれば登録可" do
      item = create(:item)
      expect(item).to be_valid
    end
  end
end