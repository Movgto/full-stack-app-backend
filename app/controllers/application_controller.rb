class ApplicationController < ActionController::Base
    before_action :set_default_url_options
  
    private
  
    def set_default_url_options
      Rails.application.routes.default_url_options[:host] = 'localhost:3000'
    end
  end
  