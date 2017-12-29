require "spec_helper"

feature "A user visits the home page", :js do
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

    specify "Awesome Chat App" do
      within "#awesome_chat_app" do
        expect(page).to have_content("Awesome Chat App")
        expect(page).to have_css("img[src*='awesome-chat-app.jpg']")
        find(".icon-github-circled").click

        expect(current_path).to eq("/danfrenette/dans-awesome-chat-app/")
        expect(page).to have_content("Repository for Dan's Awesome Chat App")
      end
    end

    specify "Catch of the Day" do
      within "#catch_of_the_day" do
        expect(page).to have_content("Catch of the Day")
        expect(page).to have_css("img[src*='catch-of-the-day.jpg']")
        find(".icon-github-circled").click

        expect(current_path).to eq("/danfrenette/Catch-of-the-Day/")
        expect(page).to have_content("Repository for Catch of the Day")
      end
    end
  end
end
