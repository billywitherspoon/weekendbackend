require 'rest-client'
require 'json'

class DarkSky
   def self.forecast(latitude, longitude)
      forecast = JSON.parse(RestClient.get("https://api.darksky.net/forecast/#{$dark_sky_key}/#{latitude},#{longitude}?exclude=minutely,hourly,flags"))
   end
end
