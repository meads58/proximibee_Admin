require 'rails_helper'
require 'helpers/add_show_helper'

RSpec.configure do |c|
  c.include Helpers
end

feature 'beacons' do

  context 'no beacons added' do
    scenario 'should display a prompt to add a beacon' do
      visit '/'
      expect(page).to have_link 'Add Beacon'
    end
  end

  context 'add a beacon' do
    scenario 'can add a new beacon' do
      add_show_helper('boat')
      visit '/'
      click_link "Add Beacon"
      fill_in 'Name', with: 'blue beacon'
      fill_in 'Major', with: 8899
      fill_in 'Minor', with: 2233
      select 'boat', from: "beacon[show_id]"
      click_on 'Add Beacon'
      expect(page).to have_content "Beacon successfully added"
    end
  end

end