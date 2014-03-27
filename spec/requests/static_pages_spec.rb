require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Eticket App'" do
      visit '/static_pages#home'
  	  expect(page).to have_title("Eticket App | Home")
    end
  end
end




