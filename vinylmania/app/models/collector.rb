class Collector < ActiveRecord::Base

  # allows me to say collector.vinyl_records
  # connect it to vinyl_records table THROUGH the join-table named "Collection"
  has_many :records, through: :collections

end
