

Given(/^there are 10 users$/) do
  10.times do 
    user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
    user.save!
  end
  assert_equal 10, User.count
end

Given(/^I am a registered user$/) do
  current_user = User.create(first_name: "corey", last_name: "trombley", email: "corey@test.com", password: "password", password_confirmation: "password")
end

Given(/^I am loged in as "(.*?)"$/) do |email|
  visit "/"
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => 'password'
end



Given(/^I am on a users page$/) do
 visit "/users/#{User.first.id}"
end

When(/^I press the message <button>$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^a message form should ajax onto the page$/) do
  pending # express the regexp above with the code you wish you had
end

