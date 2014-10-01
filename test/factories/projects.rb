FactoryGirl.define do
 factory :project do
  title           { Faker::Movie.title } 
  description     { Faker::Lorem.sentence }
  website         { Faker::Internet.http_url }    
  github          { Faker::Internet.http_url } 
 end 
end



