require 'rails_helper'

feature "User can visit the types index page from the home page" do
  before {visit root_path}
  let!(:type) {FactoryGirl.create(:type, typename: "Normal") }
  context "As an unauthenticated user on the home page" do
    scenario "I can click a link to visit the types index page" do
      visit '/'
      click_link "Attack Types"

      expect(page).to have_link "Normal"
      expect(page).to have_content "Normal"
      expect(page).to_not have_link "Attack Types"
      expect(page).to_not have_link "Defenders"
    end
  end
end
