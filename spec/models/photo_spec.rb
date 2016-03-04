require 'rails_helper'

describe Photo do

	describe "validate" do
		it "is invalid when image is blank" do
			newphoto = Photo.new
			newphoto.caption = "hello"
			expect(newphoto.valid?).to eq(false)
		end
	end

	describe "generate_tags" do
		let(:photo) { create(:photo) }
		it "generate valid tag" do
			expect(photo.hashtags.where(:name => "hello").present?).to eq(true)
		end
	end

	describe "self.search_by_tags(keywords)" do
		let(:photo) { create(:photo) }
		let(:hashtag) {create(:hashtag)}
		it "return photo contains the keyword tag" do
			photo.save
			photos = Photo.search_by_tags(["hello"])
			expect(photos.first).to eq(photo)
		end
	end
end