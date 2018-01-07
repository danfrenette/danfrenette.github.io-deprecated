module ApplicationHelper
  def gravatar(email)
    gravatar_id = Digest::MD5.hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png?s=175"
  end
end
