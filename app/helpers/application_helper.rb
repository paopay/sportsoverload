require 'active_support/core_ext'

module ApplicationHelper

  def datetime_to_date(datetime)
    datetime.to_date
  end
end

module AuthenticateHelper
  def current_user
    if session[:user_id]
      return User.find(session[:user_id])
    end
  end
end
