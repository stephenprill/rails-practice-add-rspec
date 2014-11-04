require 'rails_helper'

  feature "Events" do

#create

  scenario 'User creates an event' do
   visit root_path
   click_on "New Event"
   fill_in "Description", with: "My awesome description"

   click_on "Create Event"
   visit root_path
   expect(page).to have_content ("My awesome description")

#update

    click_on "My awesome description"
    click_on "Edit"
    fill_in "Description", with: "My awesome event"
    click_on "Update Event"
    expect(page).to have_content ("My awesome event")
    expect(page).to have_no_content ("My awesome description")

#delete

    click_on "delete"
    expect(page).to have_no_content ("My awesome event")

  end
end



      #feature "Events" do

    #  scenario "User edits an event" do
        #Event.create!(description: "My aweeesome event")

  #  visit root_path
  #  expect(page).to have_content("My aweeesome event")
  #  click_on "edit"
  #  fill_in "Description", with: "My awesome event"
  #  click_on "Update Event"

  #  expect(page).to have_content("My awesome event")
  #  expect(page).to have_no_content("My aweeesome event")
#  end

    #describe 'the crud process', :type => :feature do
    #  before :each do
    #    visit root_path
    #    scenario 'User creates new event'
    #  click_on 'New Event'
      #fill_in :description => 'Desciptio'

      #Events.make(
      #:description => 'Descriptor',
      #:location => 'Colorado',
      #:date => '02/14/2003',
      #:capacity => '200000')

    #it "creates new event" do

    #Events.make(:email => 'user@example.com', :password =>

    #describe "the signin process", :type => :feature do
      #before :each do
        #User.make(:email => 'user@example.com', :password => 'password')
      #end

      #it "signs me in" do
        #visit '/sessions/new'
        #within("#session") do
          #fill_in 'Email', :with => 'user@example.com'
          #fill_in 'Password', :with => 'password'
        #end
        #click_button 'Sign in'
        #expect(page).to have_content 'Success'
