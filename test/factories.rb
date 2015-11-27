FactoryGirl.define do  factory :lesson do
    
  end
  factory :section do
    
  end


  # use Ken's answers from Q&A
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
