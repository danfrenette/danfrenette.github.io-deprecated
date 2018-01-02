class ContactEmail < ApplicationRecord
  validates_presence_of :body, :email, :subject
end
