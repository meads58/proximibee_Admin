module Helpers

  def add_show_helper(show = "Cool Cars 2015")
    visit '/'
    click_on "Add Show"
    fill_in "Name", with: show
    fill_in "Location", with: "O2 events centre"
    click_on "Add Show"
  end

end