require 'rails_helper'

describe User do

	let(:user1) { build(:user) }
	let(:user2) { create(:user) }

	describe "validation" do
		it 'has a valid factory' do
			expect(create(:user)).to be_valid	
		end

		it 'valid with username, email and password' do
			expect(user2).to be_valid
		end

		it 'invalid with existed username' do
			#expect(user1.username).to eq(user2.username)
			newuser = User.new
			newuser.username = user2.username
			newuser.email = "hello@aaa.com"
			newuser.password = "123456"
			#user1.update_attributes(:username => user1.username)
			newuser.save
			expect(newuser.valid?).to eq(false)
		end
	end

	#test gravatar module, test data from gratavar.com
	describe "gravatar module" do
		it 'generate a valid gravatar link with email' do
			user1.email = "myemailaddress@example.com"
			expect(user1.gravatar).to eq("http://www.gravatar.com/avatar/0bc83cb571cd1c50ba6f3e8a78ef1346")
		end

		it 'generate a valid gravatar link with email contains Uppercase letter' do
			user1.email = "MyEmailAddress@example.com"
			expect(user1.gravatar).to eq("http://www.gravatar.com/avatar/0bc83cb571cd1c50ba6f3e8a78ef1346")
		end 
	end
end