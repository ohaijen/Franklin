# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def current_user
    session[:user_id] && User.find(session[:user_id])
  end

  def popup(text, popup_text)
    "<div class=popup_activator>#{text}</div> <div style='display:none;z-index:100; position:absolute', class='popup'>#{popup_text}</div>"
  end
end
