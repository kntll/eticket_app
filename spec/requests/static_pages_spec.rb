require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Eticket App'" do
      visit '/home'
      expect(page).to have_content('Eticket App')
    end

    it "should have the base title" do
      visit '/home'
      expect(page).to have_title("Eticket App")
    end
  

    it "should not have a custom page title" do
      visit '/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/help'
      expect(page).to have_title("Eticket App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/about'
      expect(page).to have_title("Eticket App | About Us")
    end
  end
end