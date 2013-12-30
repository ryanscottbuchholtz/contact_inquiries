require 'spec_helper'

describe Inquiry do
  describe 'attributes' do
    it { should_not have_valid(:email_address).when(nil) }
    it { should_not have_valid(:subject).when(nil) }
    it { should_not have_valid(:description).when(nil) }
    it { should_not have_valid(:first_name).when(nil) }
    it { should_not have_valid(:last_name).when(nil) }
  end
end
