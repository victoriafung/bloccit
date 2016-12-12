module PostsHelper
  def user_is_authorized_for_delete_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end

  def user_is_authorized_for_create_or_update_post?(post)
    current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
  end
end
