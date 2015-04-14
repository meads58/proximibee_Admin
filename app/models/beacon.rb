class Beacon < ActiveRecord::Base
  belongs_to :show
  has_many :products, dependent: :destroy

  def as_json(options={})
    super(:include => [:products])
  end
end


