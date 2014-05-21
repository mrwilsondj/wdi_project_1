class Collector < ActiveRecord::Base

  # allows me to say collector.records
  # connect it to records table THROUGH the join-table named "Collection"
  has_many :records, through: :collections

end
