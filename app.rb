require "sinatra"
require "sinatra/reloader"
require "geocoder"
require "forecast_io"
require "httparty"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

# enter your Dark Sky API key here
ForecastIO.api_key = "fd60fbab6e9f7187ccd81a0eac203439"


get "/" do
  # show a view that asks for the location
view "ask"
   


end

get "/news" do

  # do everything else


    view "news"
end



