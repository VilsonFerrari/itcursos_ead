class Course < ActiveRecord::Base
  has_many :course_classes
  

  def to_s
    "#{self.name} - #{self.hours} horas"
  end
end
