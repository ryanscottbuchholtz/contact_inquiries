require 'spec_helper'

feature 'Admin visits index page', %q{
  As an Admin
  I want to review contact inquiries
  So that I can respond or take action
} do

  # *I can see a list of all contact inquiries

  context 'successful inquiries submitted' do
    it 'displays all submitted inquiries' do
      Inquiry.create!(email_address: 'ryan@buchholtz.com', subject: 'First inquiry', description: 'Testing one', first_name: 'Ryan', last_name: 'Buchholtz')
      Inquiry.create!(email_address: 'doug@munn.com', subject: 'Second inquiry', description: 'Testing two', first_name: 'Doug', last_name: 'Munn')

      visit '/inquiries/'

      expect(page).to have_content 'First inquiry'
      expect(page).to have_content 'ryan@buchholtz.com'
      expect(page).to have_content 'Testing two'
    end
  end

end

