FactoryBot.define do
  factory :user do
    email {"v1@example"}
    password {"abcdefg"}
    password_confirmation {"abcdefg"}
  end
end