#coding: utf-8
require "spec_helper"

describe "Set locales", js: true do

  context "pt-BR" do
    before do
      visit root_path

      click_link "pt-BR"
    end

    it "displays correctly local" do
      expect(page).to have_content("Usuários")
    end
  end

  context "en" do
    before do
      visit root_path

      click_link "en"
    end

    it "displays correctly local" do
      expect(page).to have_content("Users")
    end
  end
end
