module MembersHelper
	def gravatar_for(member, option = { size: 80})
		gravatar_id = Digest::MD5::hexdigest(member.mailaddress.downcase)
		size = option[:size]
		gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: member.name, class: "img-circle")
		
	end
end
