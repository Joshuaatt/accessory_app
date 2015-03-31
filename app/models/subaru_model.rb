class SubaruModel < ActiveRecord::Base
  belongs_to :subaru
  validates_presence_of :name, :year
end
