FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}
    last_name              {"阿部"}
    first_name             {"一郎"}
    last_name_katakana         {"アベ"}
    first_name_katakana        {"イチロウ"}
    birthday              {"2020.09.15"}
  end
end