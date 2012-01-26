# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  SECONDS_IN_A_WEEK = 604800

  def current_user
    session[:user_id] && User.find(session[:user_id])
  end

  def popup(text, popup_text)
    "<div class=popup_activator>#{text}</div> <div style='display:none;z-index:100; position:absolute', class='popup'>#{popup_text}</div>"
  end

  def virtue_of_the_week
    if current_user && current_user.user_virtues.any?
      virtues = current_user.user_virtues.sort_by{|v| v.ordinal || v.id}
      user_starting_sunday = current_user.created_at - current_user.created_at.wday.days
      full_weeks_since_user_starting_sunday = (Time.now - user_starting_sunday)/SECONDS_IN_A_WEEK

      offset = full_weeks_since_user_starting_sunday % virtues.count
      virtues[offset]
    else
      nil
    end
  end
end
