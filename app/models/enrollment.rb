class Enrollment < ActiveRecord::Base
  belongs_to :course_class
  belongs_to :person

  validates_presence_of :person_id, :course_class_id

end
