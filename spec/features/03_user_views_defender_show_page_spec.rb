require 'rails_helper'

feature "User can visit the defender show page from the index page" do
  before {visit root_path}
  let!(:defender) {FactoryGirl.create(:defender, maintype: "Normal") }
  let!(:defenders) { FactoryGirl.create(:defender, maintype: "Normal", subtype: "Fighting") }
  context "As an unauthenticated user on the defender index page" do
    scenario "I can click a link that goes to the monotype defender show page" do
      visit '/'
      click_link "Defenders"
      click_link "Normal"

      expect(page).to have_content "Normal"
      expect(page).to_not have_link "Normal"
    end
    scenario "I can click a link that goes to the dualtype defender show page" do
      visit '/'
      click_link "Defenders"
      click_link "Normal / Fighting"

      expect(page).to have_content "Normal / Fighting"
      expect(page).to_not have_link "Normal / Fighting"
    end
  end
end
