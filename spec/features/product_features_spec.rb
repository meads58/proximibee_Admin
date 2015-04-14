require 'rails_helper'

feature 'product' do

  context 'add product' do
    scenario 'add a product to a beacon' do
      visit '/'
      click_on "Add Products"
      fill_in "Name", with: "12 piece knife set"
      fill_in "Price", with: 24.95
      click_on "Add Product"
      expect(page).to have_content "Name: 12 piece knife set"
      expect(page).to have_content "Price: £24.95"
    end
  end

end