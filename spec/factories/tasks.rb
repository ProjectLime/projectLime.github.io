# This code lets us call create :task in our tests, and it will result in
# a task with the value “Some Task” in its content attribute. Now our
# tests can quickly generate data that they need to work with


FactoryGirl.define do
  factory :task do
    content "Some Task"
  end
end