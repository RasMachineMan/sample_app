require 'rails_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
  	before { visit root_path }

	# it "should have content 'Sample App'" do
	# 	visit root_path
	# 	expect(page).to have_content("Sample App")
	# end

	it { should have_content("Sample App") } #this line of code replaces the block of code above!

	# it "should have a title" do
	# 	#visit root_path
	# 	expect(page).to have_title("#{base_title}")
	# end 

	it { should have_title(full_title("")) }

	# it "should not have a tilte home" do
	# 	#visit root_path
	# 	expect(page).not_to have_title("| Home")
	# end 

	it { should_not have_title("| Home") }

  end

  describe "Help page" do
  	before { visit help_path }

  	# it "should have content help" do
  	# 	#visit help_path
  	# 	expect(page).to have_content("Help")
  	# end

  	it { should have_content("Help") }

 	#  	it "should have a title" do
	# 	#visit help_path
	# 	expect(page).to have_title("#{base_title} | Help")
	# end 

	it { should have_title(full_title("Help")) }

  end

  describe "About Page" do
  	before { visit about_path }

  	# it "should have content about" do
  	# 	#visit about_path
  	# 	expect(page).to have_content("About Us")
  	# end

  	it { should have_content("About Us")}


    #  	it "should have a title" do
	# 	#visit about_path
	# 	expect(page).to have_title("#{base_title} | About Us")
	# end 

	it { should have_title(full_title("About Us")) }

  end	

  describe "Contact Page" do
  	before { visit contact_path }

  	# it "should have content contact" do
  	# 	#visit contact_path
  	# 	expect(page).to have_content("Contact Us")
  	# end

  	it { should have_selector("h1", text: "Contact Us") }

  	# it "should have title Contact" do
  	# 	#visit contact_path
  	# 	expect(page).to have_title("#{base_title} | Contact Us")
  	# end

  	it { should have_title(full_title("Contact Us")) }

  end

  it "should have valid links on the layout page" do
  	visit root_path
  	
  	click_link("About")
  	expect(page).to have_title(full_title("About Us"))

  	click_link("Help")
  	expect(page).to have_title(full_title("Help"))

  	click_link("Contact")
  	expect(page).to have_title(full_title("Contact Us"))

    click_link("Home")
  	click_link("Sign up now!")
  	expect(page).to have_title(full_title("Sign up"))

  	click_link("sample app")
  	expect(page).to have_title(full_title(""))
  end
end
























