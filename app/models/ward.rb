class Ward < ActiveRecord::Base
    has_many :polling_stations
end