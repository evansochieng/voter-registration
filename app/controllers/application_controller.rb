class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Routing
  # Get an array of all wards
  get "/wards" do
    #get all wards 
    wards = Ward.all

    #return json array with the names only
    wards.to_json(only: :name)
  end

  # Get an array of all polling stations
  get "/pollingstations" do
    #get all polling stations
    polling_stations = PollingStation.all

    #return json array
    polling_stations.to_json
  end

  # Get an array of all voters
  get "/voters" do
    #get all voters
    voters = Voter.all

    #return JSON
    voters.to_json
  end

  # Search voter by id
  get '/voters/:id' do
    #get voter by id
    voter = Voter.find(params[:id])

    #return JSON
    voter.to_json
  end

  # Persist voter info on registration
  post '/voters' do
    #add a new voter
    voter = Voter.create(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      DOB: params[:DOB],
      id_number: params[:id_number],
      polling_station_id: params[:polling_station_id]
    )
    #return JSON of the new voter info
    voter.to_json
  end

  #Update voter details
  patch '/voters/:id' do 
    #a user can change their details
    voter = Voter.find(params[:id])

    #Update voter details
    # voter.update(
    #   first_name: params[:first_name],
    #   middle_name: params[:middle_name],
    #   last_name: params[:last_name],
    #   age: params[:age],
    #   gender: params[:gender],
    #   DOB: params[:DOB],
    #   id_number: params[:id_number],
    #   polling_station_id: params[:polling_station_id]
    # )
    voter.update(params)

    # return JSON
    voter.to_json
  end

  # Delete voter info
  delete '/voters/:id' do
    #delete a voter
    voter = Voter.find(params[:id])

    # Delete voter from database
    voter.destroy
  end

  ##GET SUMMARY OF VOTERS IN POLLING STATIONS
  ## This will be displayed on home screen
  get '/pollingstations/votercounts' do
    #Array to store the counts
    voters_summary = []
    #voters_per_ps = Voter.group(:polling_station_id).count
    
    #find the number of voters per polling station
    PollingStation.all.each do |ps|
      voter_counts = {"#{ps.name}": ps.voters.count}
      voters_summary << voter_counts
    end

    #return JSON array with name and count
    voters_summary.to_json
  end

  #return polling stations
  get '/pollingstations/:id' do
    #get all voters in a particular polling station
    ps_voters = PollingStation.find(params[:id]).voters

    #return only voter's names, id_number
    ps_voters.to_json(only: [:first_name, :middle_name, :last_name, :id_number])
  end

end
