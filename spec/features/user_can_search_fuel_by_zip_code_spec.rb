require 'rails_helper'

RSpec.feature "user can search fuel by zip code" do
  it "shows a list of gas stations with attributes" do
    user = User.create(name: "Marina", api_key: ENV["NREL_KEY"])

    visit root_path
    fill_in "Search by zip...", with: "80203"

    click_on "Locate"

    expect(current_path).to eq("/search?zip=80203")

    within(".search_results") do
        #expect quantity to be 10
        #expect to only have Electric and Propane
      expect(page).to have_content("Electric")
      expect(page).to have_content("Propane")
    end
#2nd child should have this information
    # within(".search_results")[2] do
    #   expect(page).to have_content("Name")
    #   expect(page).to have_content("Address")
    #   expect(page).to have_content("Fuel Types")
    #   expect(page).to have_content("Distance")
    #   expect(page).to have_content("Access Times")
    # end

  end
end
