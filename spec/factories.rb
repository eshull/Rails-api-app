FactoryBot.define do
  factory :user do
    name { "MyString" }
    token { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end
  factory(:quote) do
    author('Reginald Bottomfeld')
    content('any time is a good time for tea time')
  end
end
