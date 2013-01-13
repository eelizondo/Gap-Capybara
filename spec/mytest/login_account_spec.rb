require 'capybara/rspec'
require 'spec_helper'

describe "the signup process", :type => :feature do
  
  before do
    Capybara.current_driver = :selenium
  end

  it "signs me in" do
    visit 'http://vacations.evercoding.com/'
    within("#content") do
      fill_in 'Email', :with => 'tester@growthaccelerationpartners.com'
      fill_in 'Password', :with => 'asdf1234'
    end
    click_button('Sign in') 
    page.should have_content 'Success'
  end
end

  