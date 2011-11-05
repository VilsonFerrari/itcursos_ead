class Location < ActiveRecord::Base
  has_many :course_classes


  def to_s
    self.name
  end
end
