FactoryGirl.define do
	factory :user do
		name     "Tom"
		email    "tom@live.com"
		password "foobar"
		password_confirmation "foobar"
	end
end