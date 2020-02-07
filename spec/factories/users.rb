FactoryBot.define do
  factory :user do
    first_name {"mori"}
    last_name {"naoya"}
    first_name_kana {"mori"}
    last_name_kana {"naoya"}
    year {"2020-02-05 00:00:00"}
    phone_number {"fghjk"}
    nickname {"sdfghfj"}
    password {"00000000"}
    password_confirmation {"00000000"}
    sequence(:email) { |n| "morimoripcpc#{n}@gmail.com"}
  end
end
