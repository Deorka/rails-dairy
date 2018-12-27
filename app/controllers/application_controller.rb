class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "alena", password: "0000", except: [:index, :show]

  def index
    @events = Event.all
  end
end
