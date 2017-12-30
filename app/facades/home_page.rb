class HomePage
  URL   = CGI.escape("danfrenette.codes")
  TITLE = CGI.escape("Need to get in touch with a good programmer? Checkout Dan Frenette")

  LINKS = {
    github_link: "https://github.com/danfrenette/",
    codewars_link: "https://www.codewars.com/users/danfrenette",
    linkedin_link: "https://www.linkedin.com/in/danfrenette/",
    linkedin_share_link: "https://www.linkedin.com/shareArticle?mini=true&url=#{URL}&title=#{TITLE}",
    twitter_link: "https://twitter.com/DanRFrenette",
    twitter_share_link: "https://twitter.com/home?status=#{TITLE}",
    facebook_share_link: "https://www.facebook.com/sharer/sharer.php?u=danfrenette.codes",
    stackoverflow_link: "https://stackoverflow.com/users/4179850/dan-frenette",
    email_link: "mailto Dan.R.Frenette@gmail.com",
    email: "Dan.R.Frenette@gmail.com",
    resume_download: "https://www.dropbox.com/s/r3z0q54ima7dtlu/2017%20Resume.pdf?dl=0",
  }.freeze

  LINKS.each do |description, url_string|
    define_method description do
      url_string
    end
  end

  def contact_email
    @contact_email ||= ContactEmail.new
  end
end
