require 'rails_helper'

describe Show, type: :model do
  it { is_expected.to have_many :beacons }
end

