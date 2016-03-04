require 'rails_helper'

#test target: comment_controller
RSpec.describe CommentsController do


	describe 'POST #create' do
		let(:user) { create(:user) }
		let(:photo) {create(:photo)}
		let(:params) { {comment: {user_id: 1, photo_id: 1, comment: "test comment"}}}

		it "without user signed in it redirect to login page" do

			post :create, params

	 		expect(response).to redirect_to(new_user_session_path)
		end
	end
end