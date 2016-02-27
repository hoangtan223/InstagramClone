module HasGravatar
	def gravatar
		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?s=200"
	end
end