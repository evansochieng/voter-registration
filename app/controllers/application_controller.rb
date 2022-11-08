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
  get "/voters" do
    #get all voters
    voters = Voter.all
    voters.to_json
  end

  get '/voters/:id' do
    #get voter by id
    voters = Voter.find(params[:id])
    voters.to_json
  end

  post '/voters' do
    #add a new voter
    voters = Voter.create(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      DOB: params[:DOB],
      id_number: params[:id_number],
      polling_station_id: params[:polling_station_id]
    )
    voters.to_json
  end

  delete '/voters/:id' do
    #delete a voter
    voters = Voter.find(params[:id])
    voters.destroy
  end

  patch '/voters/:id' do 
    #a user can change their details
    voters = Voter.find(params[:id])
    voters.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      DOB: params[:DOB],
      id_number: params[:id_number],
      polling_station_id: params[:polling_station_id]
    )
    voters.to_json
  end

end
