require 'spec_helper'

describe Inquiry do
  let(:invalid_email) { ['@me.com', 'ryan.com', 'ryan@.com', 'ryan@me'] }
  
  describe 'attributes' do
    it { should_not have_valid(:email_address).when(nil, *invalid_email) }
    it { should_not have_valid(:subject).when(nil) }
    it { should_not have_valid(:description).when(nil) }
    it { should_not have_valid(:first_name).when(nil) }
    it { should_not have_valid(:last_name).when(nil) }
  end

  describe 'contact inquiry count' do
    it 'returns the number of contact inquiries' do
      Inquiry.create!(email_address: 'ryan@buchholtz.com', subject: 'First inquiry', description: 'Testing one', first_name: 'Ryan', last_name: 'Buchholtz')
      Inquiry.create!(email_address: 'doug@munn.com', subject: 'Second inquiry', description: 'Testing two', first_name: 'Doug', last_name: 'Munn')

      expect(Inquiry.count).to equal(2)
      expect(Inquiry.first.email_address).to eql('ryan@buchholtz.com')
    end
  end

end
