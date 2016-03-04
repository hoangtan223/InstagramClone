require 'rails_helper'

#test target: photos_controller
RSpec.describe PhotosController do


	describe 'POST #create' do
		let(:user) { create(:user) }
		let(:params) { {photo: {caption: "photo caption", image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'pictures', 'foody.jpg')) }} }

		it "with user signed in and valid params it redirect to profile page" do
			sign_in user
			post :create, params

			expect(response).to redirect_to(user)
		end

		it "without user signed in it redirect to login page" do
			post :create, params

	 		expect(response).to redirect_to(new_user_session_path)
		end
	end
end