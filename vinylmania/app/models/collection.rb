class Collection < ActiveRecord::Base

  # two foreign keys, two parents
  belongs_to  :collector
  belongs_to  :vinyl_record

end
