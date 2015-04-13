class Show < ActiveRecord::Base
  has_many :beacons, dependent: :destroy
end
