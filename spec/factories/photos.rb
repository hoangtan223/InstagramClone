require 'faker'

FactoryGirl.define do
	factory :photo do 
		image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'pictures', 'foody.jpg')) }
		caption "#hello #world"
	end
end