module ApplicationHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(profile)
    gravatar_id = Digest::MD5::hexdigest(profile.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: profile.name, class: "gravatar")
  end

end
