FactoryGirl.define do

  factory :enrollment do
    association :user
    association :course
  end


  factory :lesson do
    title "somelesson"
    subtitle "somesubtitle"
  end

  factory :section do
    title "somesection"
  end

  factory :user do
    sequence :email do |n|
      "penguinisreallygreat#{n}@gmail.com"
    end
    password "cantflybutwaddle"
    password_confirmation "cantflybutwaddle"
  end

  factory :course do
    title "somecourse"
    description "somedescription"
    cost(1.0)
    association :user
  end

end
