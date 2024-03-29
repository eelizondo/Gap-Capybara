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
  end
end

  