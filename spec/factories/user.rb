# rubocop:disable Layout/EndOfLine
FactoryBot.define do
  factory :user, aliases: %i[creator attendee] do
    sequence(:name) { |n| "John Doe #{n}" }
  end
end
# rubocop:enable Layout/EndOfLine
