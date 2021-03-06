class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_locale

  respond_to :html, :json

  layout "application"

  def default_url_options( options = {} )
    { locale: I18n.locale }
  end

  private
  def set_locale
    I18n.locale = params[:locale] || set_locale_by_subdomain
  end

  # def set_locale_by_scope
  #   locale = params.fetch(:locale, I18n.default_locale).to_sym
  #   I18n.locale = locale if I18n.available_locales.include?(locale)
  # end

  def set_locale_by_subdomain
    locale = request.host.split(".").first.to_sym
    locale = I18n.default_locale unless I18n.available_locales.include?(locale)
    I18n.locale = locale
  end
end
