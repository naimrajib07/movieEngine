module ApplicationHelper
  def session_utility_link
    if user_signed_in?
      "<li>#{link_to 'Sign Out', destroy_user_session_url, method: :delete}</li>".html_safe
    else
      "<li>#{link_to 'Sign In/Sign Up', new_user_session_url}</li>".html_safe
    end
  end
end
