class WelcomeController < ApplicationController

  def index
    city = '47.1426,39.4238'
    request = ('https://api.darksky.net/forecast/6c9869436584c26fbbf25e901b321deb/' + city)
    response = HTTP.get(request)
    data = JSON.parse(response.body)["currently"]
    weather = {
        "Summary" => data["summary"],
        "Precipitation" => data["precipType"],
        "Temperature" => ((data["temperature"].to_f  - 32) * 5.0 / 9.0).to_i,
        "Wind Speed" => data["windSpeed"]
    }
    @weather = weather
  end
end
