class Indicator < ActiveRecord::Base
  unloadable
  validates :name, presence: true
end
