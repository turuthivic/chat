module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.email
    image_tag "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=https%3A%2F%2Fexample.com%2Fimages%2Favatar.jpg",
              opts
  end
end
