class Inquiry < ActiveRecord::Base
  validates_presence_of :email_address, :subject, :description, :first_name, :last_name
  validates_format_of :email_address, :with => /.+@.+\..+/i
end
