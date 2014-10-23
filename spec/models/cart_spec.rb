require "rails_helper" 

describe Cart do
  fixtures :carts
  fixtures :products

  describe "合計金額の計算" do
    it "合計金額の計算正しい消費税 8 % を加え" do
      sum =  Cart.user_cart_sum(user_id: 1)
      expect(sum).to eq(874)
    end
  end

  describe "送料の計算" do
    it "合計金額(消費税は含まない)が 2,000 未満なら ￥500" do
      fare =  Cart.user_cart_fare(sum: 1999)
      expect(fare).to eq(500)
    end

    it "合計金額(消費税は含まない)が 2,000 以上なら 送料は無し" do
      fare =  Cart.user_cart_fare(sum: 20001)
      expect(fare).to eq(0)
    end
  end
end