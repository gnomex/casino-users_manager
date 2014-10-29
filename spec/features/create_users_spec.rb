#coding: utf-8
require "spec_helper"

describe "Create a new user", js: true do

  context "with valid data" do
    before do
      visit new_user_path({locale: 'en'})

      fill_in "Username", with: "john"
      fill_in "Fullname", with: "John Doe"
      fill_in "Email", with: "john@doe.com"
      fill_in "Encrypted password", with: "test"

      click_button 'save'
    end

    it "displays success message" do
      expect(page).to have_content("The user has been created!")
    end

    it "redirects to categories path" do
      expect(current_path).to eql root_path
    end

    it "saves the right name" do
      expect(User.last.fullname).to eql("John Doe")
    end
  end

  context "with invalid data" do
    before do
      visit new_user_path({locale: 'en'})

      click_button 'save'
    end

    it "re-render form page" do
      expect(current_path).to eql(new_user_path({locale: 'en'}))
    end

    it "displays error message" do
      expect(page).to have_content("Hey! Something wrong happens")
    end
  end
end
