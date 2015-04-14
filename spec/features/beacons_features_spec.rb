require 'rails_helper'
# require 'helpers/shows_helper_spec'

# RSpec.configure do |c|
#   c.include Helpers
# end

feature 'beacons' do

  context 'no beacons added' do
    scenario 'should display a prompt to add a beacon' do
      visit '/beacons'
      expect(page).to have_link 'Add Beacon'
    end
  end

  context 'add a beacon' do
    scenario 'can add a new beacon' do
      add_show_helper('boat')
      visit '/beacons'
      click_link "Add Beacon"
      fill_in 'Name', with: 'blue beacon'
      fill_in 'Major', with: 8899
      fill_in 'Minor', with: 2233
      select 'boat', from: "beacon[show_id]"
      click_on 'Add Beacon'
      expect(page).to have_content "Beacon successfully added"
    end
  end

  context 'show a list of beacons' do
    scenario 'can show all the beacons' do
      visit '/beacons'

    end
  end

end