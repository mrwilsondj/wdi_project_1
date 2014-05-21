class Record < ActiveRecord::Base

  # this allows me to say record.collectors
  # connect it to collectors table THROUGH the join table named "Collection"
  has_many :collectors, through: :collections


end
