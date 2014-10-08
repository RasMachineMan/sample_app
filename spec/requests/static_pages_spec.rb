require 'rails_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
	it "should have content 'Sample App'" do
		visit '/static_pages/home'
		expect(page).to have_content("Sample App")
	end

	it "should have a title" do
		visit '/static_pages/home'
		expect(page).to have_title("#{base_title}")
	end 

	it "should not have a tilte home" do
		visit '/static_pages/home'
		expect(page).not_to have_title("| Home")
	end 
  end

  describe "Help page" do
  	it "should have content help" do
  		visit '/static_pages/help'
  		expect(page).to have_content("Help")
  	end

  	it "should have a title" do
		visit '/static_pages/help'
		expect(page).to have_title("#{base_title} | Help")
	end  
  end

  describe "About Page" do
  	it "should have content about" do
  		visit '/static_pages/about'
  		expect(page).to have_content("About Us")
  	end

  	it "should have a title" do
		visit '/static_pages/about'
		expect(page).to have_title("#{base_title} | About Us")
	end  
  end	

  describe "Contact Page" do
  	it "should have content contact" do
  		visit '/static_pages/contact'
  		expect(page).to have_content("Contact Us")
  	end

  	it "should have title Contact" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title} | Contact Us")
  	end
  end

end
























