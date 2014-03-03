require 'spec_helper'

describe "Bookmarks" do
  describe "GET /bookmarks" do
    it "should have menu item for entering a bookmark" do
      visit '/bookmarks/'
      expect(page).to have_link('New Bookmark') 
    end
    it "should display bookmarks" do
      visit '/bookmarks/'
      expect(page).to have_content('Listing bookmarks')
    end
    it "should have content 'New bookmark'" do
      visit '/bookmarks/new'
      expect(page).to have_content('New bookmark')
    end
  end
end
