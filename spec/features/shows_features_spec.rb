require 'rails_helper'

feature "show" do

  context 'add a show.' do
    scenario 'A user can add a new show' do
      visit '/'
      click_on "Add Show"
      fill_in "Name", with: "Cool Cars 2015"
      fill_in "Location", with: "O2 events centre"
      click_on "Add Show"
      expect(current_path).to eq "/beacons"
      expect(page).to have_content "Show successfully added"
    end
  end


end