class Location < ActiveRecord::Base
  has_many :course_classes
  has_many :labs

  def to_s
    self.name
  end
end
