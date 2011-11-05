class CourseClass < ActiveRecord::Base
  belongs_to :course
  belongs_to :location
  has_many :enrollments

  validates_associated :enrollments
end
