require "rails_helper"

RSpec.describe "A user visits the home page", type: :system do
  before(:each) do
    visit("/")
  end

  specify "and can see my name" do
    expect(page).to have_content("Dan Frenette")
  end

  context "and can view project information" do
    before(:each) do
      find("#menu-button").click
      click_link("Things I've Made")
    end

    specify "Awesome Chat App", :js do
      within "#awesome_chat_app" do
        expect(page).to have_content("Awesome Chat App".upcase)
        expect(page).to have_link(href: "https://github.com/danfrenette/chatrooms")
      end
    end

    specify "Catch of the Day", :js do
      within "#catch_of_the_day" do
        expect(page).to have_content("Catch of the Day".upcase)
        expect(page).to have_link(href: "https://github.com/danfrenette/Catch-of-the-Day")
      end
    end
  end
end
