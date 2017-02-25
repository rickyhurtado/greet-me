class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show_page_not_found
    flash[:not_found] = 'Contact not found.'
    render file: 'public/404.html', status: :not_found, layout: false
  end
end
