# rubocop:disable Layout/EndOfLine, Lint/EmptyBlock
FactoryBot.define do
  factory :user, aliases: %i[creator attendee] do
    sequence(:name) { |n| "John Doe #{n}" }
  end
end
# rubocop:enable Layout/EndOfLine, Lint/EmptyBlock
