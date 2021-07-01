class Enrollment < ApplicationRecord
  include Mongoid::Document
  enum status: { invited: 0, accepted: 1 }
  belongs_to :user
  belongs_to :event
end
