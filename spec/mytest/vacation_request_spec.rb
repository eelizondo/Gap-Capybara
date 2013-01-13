require 'capybara/rspec'
require 'spec_helper'

describe "the signup process", :type => :feature do
  
  before do
    Capybara.current_driver = :selenium
  end

  it "signs me in" do
    visit 'http://vacations.evercoding.com/'
    within("#content") do
      fill_in 'Email', :with => 'maureen@growthaccelerationpartners.com'
      fill_in 'Password', :with => 'Asdf1234!'
    end
    click_button('Sign in') 
    page.should have_content 'Signed in successfully'
    
    #Need to be improved
    visit 'http://vacations.evercoding.com/employees/1/vacations/new'   
    page.should have_content 'Add/Request Vacations for:'
    
    fill_in 'Since', :with => '01/30/2013'
    fill_in 'Until', :with => '02/28/2013'
    fill_in 'Requested on', :with => '01/19/2013'
    fill_in 'Total Days', :with => '1'
    fill_in 'Request Description', :with => 'Just need some days of sun!!!'
    
    click_button('Create Vacation') 
    page.should have_content 'Vacation was successfully created'
  end
end

  