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
end
