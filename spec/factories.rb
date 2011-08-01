# By using the symbol ':user', we get Factory Girl to simulate the User model.


Factory.define :user do |user|
  user.name                  "Richard Yaker"
  user.email                 "ryaker@yaker.org"
  user.password              "haim18"
  user.password_confirmation "haim18"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end