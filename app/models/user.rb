class User < ActiveRecord::Base
  has_many :votes
  belongs_to :profiles
  attr_accessible :username
end
