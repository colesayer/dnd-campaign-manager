class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper :application

  def login(id)
    session[:user_id] = id
  end

  def logout
    session[:user_id] = nil
    session[:recent_character] = nil
  end

  def check_login
    if !logged_in?
      return redirect_to login_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def set_recent_character(id)
    session[:recent_character] = id
  end

  def recent_character
    Character.find(session[:recent_character])
  end

end
