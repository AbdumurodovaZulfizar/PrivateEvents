class Enrollment < ApplicationRecord
  enum status: { invited: 0, accepted: 1 }
  belongs_to :user, optional: true
  belongs_to :event
end
