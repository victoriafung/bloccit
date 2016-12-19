module UsersHelper
  def user_has_posts?(user)
    user.posts
  end

  def user_has_comments?(user)
    user.comments
  end

end
