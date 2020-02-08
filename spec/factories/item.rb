FactoryBot.define do


  factory :item do
    name                  {"test"}
    detail                {"test"}
    status              {"1"}
    price                 {"1000"}
    status                {"1"}
    state                 {"1"}
    city                  {"1"}
    delivery              {"1"}
    delivery_time         {"1"}
    fee_payer             {"1"}
    images {[
      FactoryBot.build(:image, item: nil)  
    ]}
   
    
  end

end