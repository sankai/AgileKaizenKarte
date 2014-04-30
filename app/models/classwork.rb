class Classwork < ActiveRecord::Base
  belongs_to :term
  has_many :sessionlogs
end
