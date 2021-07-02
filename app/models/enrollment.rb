class Enrollment < ApplicationRecord
  enum status: { invited: 0, accepted: 1 }
  # belongs_to :attendee, class_name: "User"
  # belongs_to :attended_event, class_name: "Event"
  belongs_to :user, optional: true
  belongs_to :event
end
