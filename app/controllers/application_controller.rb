class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  protect_from_forgery with: :exception

  def hola
    render html: "hola, mundo!"
  end

  def mensaje
    render html: "¡Bienvenido a mi primera aplicación en Rails!"
  end
end
