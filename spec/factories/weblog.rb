FactoryBot.define do

  factory :weblog do
    title              {"ブログの書き方"}
    content            {"まずは一日一行書くところから始めましょう"}
    image              {"test.png"}
    viewed             {0}
    user
  end

end