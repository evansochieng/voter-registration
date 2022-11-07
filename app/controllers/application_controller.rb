class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/wards" do
    #get all wards 
    wards = Ward.all

    #return json array with the names only
    wards.to_json(only: :name)
  end

  get "/pollingstation" do
    #get all polling stations
    polling_stations = PollingStation.all

    #return json array
    polling_stations.to_json
  end

end
