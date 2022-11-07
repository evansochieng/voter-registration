class PollingStation < ActiveRecord::Base
    has_many :voters
    belongs_to :ward
end