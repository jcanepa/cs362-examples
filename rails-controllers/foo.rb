Rspec.describe DashboardController, type: :controller do

  let(:user) { create(:user) }
  before(:each) { sign_in(user) }

  describe 'GET index' do
    it { expect(get(:index)).to be_successful }
  end
end