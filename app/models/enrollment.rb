class Enrollment < ActiveRecord::Base
  belongs_to :course_class
  belongs_to :person
end
