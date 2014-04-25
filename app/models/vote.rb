class Vote < ActiveRecord::Base
  attr_accessible :vote_type, :voteable_id, :voteable_type

end