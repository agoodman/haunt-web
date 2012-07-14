FactoryGirl.define do
  factory :device do
    token { generate(:token) }
    lat 26.5
    lng -82.3
  end
  
  sequence(:token) { |n| Digest::SHA1.hexdigest("--#{n}--")[0..9] }
end
