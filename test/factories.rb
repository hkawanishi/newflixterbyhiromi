FactoryGirl.define do

  # use Ken's answers from Q&A
  factory :user do
    sequence :email do |n|
      "penguinisreallygreat#{n}@gmail.com"
    end
    password "cantflybutwaddle"
    password_confirmation "cantflybutwaddle"
  end

end
