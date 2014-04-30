class Student < ActiveRecord::Base
  belongs_to :term
  has_many :studentlogs
end
