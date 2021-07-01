require 'rails_helper'

RSpec.describe Event, type: :model do
  subject(:event) { build(:event) }

  describe 'associations' do
    it { is_expected.to belong_to(:creator).class_name('User') }

    it { is_expected.to have_many(:attendees).source(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:date) }
  end
end
