#the code in the spec can be interpreted by Rspec and Capybara.
require 'spec_helper'

#call to feature gets our test ready to go the string user adds task is mainly
#for the developers to know the test’s overall context

feature 'User adds task' do

  #The before(:each) loop instructs our spec to do something before each test
  #(hence, before(:each)!).
  before(:each) do
    visit root_path
    click_link 'New Task'
  end

# In this case, the test will simulate a visit to our app’s home page
# and click the link to our new-task form. Finally, each call to scenario describes
# the details of the scenario in question, simulates its actions,
# and specifies what we expect to happen as a result of those actions.

  scenario 'successfully' do
    fill_in 'Content', with: 'Some Task'
    click_button('Create Task')

    expect(page).to have_content('My Tasks')
    expect(page).to have_content('Some Task')
  end

  scenario 'without filling in name of task' do
    click_button('Create Task')

    expect(page).to have_content("Content can't be blank")
    expect(page).to_not have_content('My Tasks')
  end

  scenario 'but then cancels' do
    click_link('Back')
    expect(page).to have_content('My Tasks')
  end

end