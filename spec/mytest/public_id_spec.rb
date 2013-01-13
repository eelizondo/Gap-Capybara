require 'capybara/rspec'
require 'spec_helper'

describe "the public id process POSITIVE case", :type => :feature do
  
  before do
    Capybara.current_driver = :selenium
  end

  it "signs me in" do
    visit 'http://vacations.evercoding.com/'
    within("#content") do
      click_link('public site')
      fill_in 'Identification', :with => '123456789'
    end
    click_button('Find Employee') 
    page.should have_content 'No Employee found with that identification'
  end
end

describe "the public id process NEGATIVE case", :type => :feature do
  
  before do
    Capybara.current_driver = :selenium
  end

  it "signs me in" do
    visit 'http://vacations.evercoding.com/'
    within("#content") do
      click_link('public site')
      fill_in 'Identification', :with => '123456789'
    end
    click_button('Find Employee') 
    page.should have_content 'No Employee found with that identification'
  end
end  