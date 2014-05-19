class Record < ActiveRecord::Base

  # this allows me to say vinyl_record.collectors
  # connect it to collectors table THROUGH the join table named "Collection"
  has_many :collectors, through: :collections

  # scope :visible, lambda { where(:visible => true) }
  # scope :invisible, lambda { where(:visible => false) }
  # scope :sorted, lambda { order("records.name ASC") }
  # scope :newest_first, lambda { order("records.created_at DESC")}
  # scope :search, lambda {|query|
  #   where(["name LIKE ?", "%#{query}%"])
  # }

end
