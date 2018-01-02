class CreateContactEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_emails do |t|
      t.string  :email, null: false
      t.string  :subject
      t.text    :body
      t.timestamps
    end
  end
end
