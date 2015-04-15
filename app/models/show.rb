class Show < ActiveRecord::Base
  has_many :beacons, dependent: :destroy

  def as_json(options={})
      super(include: {beacons: {
                          include: :products}})
  end

end
