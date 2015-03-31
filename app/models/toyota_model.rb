class ToyotaModel < ActiveRecord::Base
  belongs_to :toyota
  validates_presence_of :name, :year
end
