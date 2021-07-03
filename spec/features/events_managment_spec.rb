# rubocop:disable Layout/EndOfLine
require 'rails_helper'
RSpec.describe 'EventsMenagmena', type: :system do
  describe 'Personal Events' do
    it 'Shows all events on root_path' do
      visit root_path
      expect(page).to have_content('Past Event')
      expect(page).to have_content('Upcoming Event')
    end
  end
end
# rubocop:enable Layout/EndOfLine
