module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    email = user.email
    hash = Digest::MD5.hexdigest(email)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"

    image_tag(gravatar_url, alt:user.username, class:"rounded-circle shadow-lg mx-auto d-block")
  end
end
