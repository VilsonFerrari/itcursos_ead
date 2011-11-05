class Person < ActiveRecord::Base
  has_many :enrollments
  validates_associated :enrollments
  
 end
