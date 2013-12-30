class Inquiry < ActiveRecord::Base
  validates_presence_of :email_address, :subject, :description, :first_name, :last_name
end
