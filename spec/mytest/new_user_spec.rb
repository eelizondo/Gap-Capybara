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
    
    click_link('Create a new employee')
    page.should have_content 'New employee'
  
    fill_in 'First name', :with => 'Edber'
    fill_in 'Last name', :with => 'Elizondo'
    fill_in 'Email', :with => 'edber@gmail.com'
    fill_in 'Identification', :with => '603010817'
    fill_in 'Leader name', :with => 'Edber' 
    click_button('Create Employee')
    page.should have_content 'Employee was successfully created'
  end
end

  