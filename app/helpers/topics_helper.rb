module TopicsHelper
  def user_is_authorized_for_create_or_delete_topics?
    current_user && current_user.admin?
  end

  def user_is_authorized_for_update_topics?
    current_user || current_user.admin? || current_user.moderator?
  end
end
