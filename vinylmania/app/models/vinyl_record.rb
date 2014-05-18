class VinylRecord < ActiveRecord::Base
  # this allows me to say vinyl_record.collectors
  # connect it to collectors table THROUGH the join table named "Collection"
  has_many :collectors, through: :collections

end
