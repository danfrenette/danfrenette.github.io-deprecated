require "spec_helper"

feature "A user sends an email through the contact form", :js do
  specify "and can send me an email" do
    fake_email = "hello@example.com"

    visit "/"
    find("#menu-button").click
    click_link "Contact"

    fill_in "contact_form_email",   with: fake_email
    fill_in "contact_form_subject", with: "Test Subject"
    fill_in "contact_form_message", with: "Test Message."
    click_on "Submit"

    expect(page).to have_content("Thanks for reaching out!")
    expect(ActionMailer::Base.deliveries).to_not eql([])
    mail = ActionMailer::Base.deliveries.last
    assert_equal fake_email, mail["from"].to_s
  end
end
