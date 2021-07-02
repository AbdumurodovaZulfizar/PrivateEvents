class UsersController < ApplicationController
  def index
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end
end
