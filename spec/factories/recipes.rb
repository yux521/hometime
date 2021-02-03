FactoryBot.define do
  factory :recipe do
    title              { '本日のおすすめレシピ' }
    guideline_id       { 2 }
    memo               { 'よろしくね' }
    ingredient_1       { '材料1' }
    ingredient_2       { '材料2' }
    ingredient_3       { '材料3' }
    ingredient_4       { '材料4' }
    ingredient_5       { '材料5' }
    ingredient_6       { '材料6' }
    ingredient_7       { '材料7' }
    ingredient_8       { '材料8' }
    ingredient_9       { '材料9' }
    ingredient_10      { '材料10' }
    cook_1             { '作り方1' }
    cook_2             { '作り方2' }
    cook_3             { '作り方3' }
    cook_4             { '作り方4' }
    cook_5             { '作り方5' }
    cook_6             { '作り方6' }
    cook_7             { '作り方7' }
    cook_8             { '作り方8' }
    cook_9             { '作り方9' }
    cook_10            { '作り方10' }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('app/assets/images/adrien-sala-qvIrI4ueqzY-unsplash.jpg'),
                           filename: 'adrien-sala-qvIrI4ueqzY-unsplash.jpg')
    end
  end
end
