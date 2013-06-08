class Browser
  module ActionController
    extend ActiveSupport::Concern

    included do
      helper_method :browser
    end

    private
    def browser
      @browser ||= Browser.new(
        accept_language: request.headers["Accept-Language"],
        ua: request.headers["User-Agent"]
      )
    end
  end
end
