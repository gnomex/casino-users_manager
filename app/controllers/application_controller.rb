class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  respond_to :html, :json

  before_action :locale

  def locale
    if I18n.available_locales.include?(params[:l])
      I18n.locale = params[:l].to_sym
    else
      I18n.locale = I18n.default_locale
    end
  end
end
