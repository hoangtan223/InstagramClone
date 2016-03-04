FactoryGirl.define do
  factory :comment do
    comment "this is a comment"
    association :photo, factory: :photo
    association :user, factory: :user
  end
end
