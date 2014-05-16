class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404( exception = nil)
    if exception
      logger.info "Rendering 404 with exception: #{exception.message}"
    end

    render template: 'error/error_404', 
           status: 404, 
           layout: 'application', 
           content_type: 'text/html'
  end

  def render_500( exception = nil )
    if exception    
      logger.info "Rendering 500 with exception: #{exception.message}"
    end

    render template: "errors/error_500", 
           status: 500, 
           layout: 'application'


  end

end
