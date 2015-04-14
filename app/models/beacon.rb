class Beacon < ActiveRecord::Base
  belongs_to :show
  has_many :products
end


