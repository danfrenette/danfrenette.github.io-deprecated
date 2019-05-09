require "spec_helper"

RSpec.describe "A user sends an email through the contact form", type: :system do
  specify "and can send me an email", :js do
    fake_email = "hello@example.com"

    visit "/"
    find("#menu-button").click
    click_link "Contact"

    fill_in "contact_email_email",   with: fake_email
    fill_in "contact_email_subject", with: "Test Subject"
    fill_in "contact_email_body", with: "Test Message."
    click_on "Submit"

    expect(page).to have_content("Thanks for reaching out!")
    expect(ActionMailer::Base.deliveries).to_not eql([])
    mail = ActionMailer::Base.deliveries.last
    assert_equal fake_email, mail["from"].to_s
  end
end
