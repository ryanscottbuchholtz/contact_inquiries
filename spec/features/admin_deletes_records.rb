require 'spec_helper'

feature 'Admin visits index page', %q{
  As an Admin
  I want to review contact inquiries
  So that I can respond or take action
} do

  # *I can remove an item from teh listing of contact inquiries   

    context 'successful inquiries submitted' do
    it 'allows deletion of submitted inquiry' do
      Inquiry.create!(email_address: 'ryan@buchholtz.com', subject: 'First inquiry', description: 'Testing one', first_name: 'Ryan', last_name: 'Buchholtz')

      visit '/inquiries/'

      click_link('Remove')

      expect(page).to have_no_content 'First inquiry'
      expect(page).to have_no_content 'ryan@buchholtz.com'
      expect(page).to have_no_content 'Testing one'
    end
  end
end