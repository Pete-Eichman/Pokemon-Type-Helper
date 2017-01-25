require 'rails_helper'

feature "User can visit the defender index page from the home page" do
  before {visit root_path}
  let!(:defender) {FactoryGirl.create(:defender, maintype: "Normal") }
  let!(:defenders) { FactoryGirl.create_list(:defender, 2, maintype: "Normal", subtype: "Fighting") }
  context "As an unauthenticated user on the home page" do
    scenario "I can see a link that goes to the defenders index" do
      visit '/'

      expect(page).to have_content "Welcome to Pokemon Type Helper!"
      expect(page).to have_link "Attack Types"
      expect(page).to have_link "Defenders"
    end
    scenario "I can click the link to go to the defenders index" do
      visit '/'
      click_link "Defenders"

      expect(page).to have_content "Type:"
      expect(page).to have_link "Normal"
      expect(page).to have_content "Types:"
      expect(page).to have_link "Normal / Fighting"
    end
  end
end
