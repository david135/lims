FactoryGirl.define do
  factory :task do
    event nil
    title "MyString"
    description "MyText"
    street "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    latitude 1.5
    longitude 1.5
    start_time "2016-09-19 18:01:22"
    end_time "2016-09-19 18:01:22"
  end
end
