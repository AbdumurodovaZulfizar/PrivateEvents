class EnrollmentsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def create
    event = Event.find(params[:event_id])
    enrollment = Enrollment.new(event_id: event.id, user_id: params[:user_id])

    if enrollment.save
      enrollment.invited!
      flash[:success] = 'Invitation sent to user'
      redirect_to users_path(event_id: event.id)
    else
      flash[:alert] = 'Something went wrong...'
      redirect_to event_path(event)
    end
  end

  def destroy
    event = Event.find(params[:event_id])
    enrollment = Enrollment.find(params[:id])
    if current_user == event.creator
      enrollment.destroy
      flash[:success] = 'Invitation removed'
    else
      enrollment.invited!
      flash[:alert] = 'Something went wrong...'
    end

    redirect_to root_path
  end

  def update
    @event = Event.find(params[:event_id])
    @enrollment = Enrollment.find_by(event_id: params[:event_id], user_id: current_user.id)
    if @enrollment&.invited?
      @enrollment.accepted!
      flash[:notice] = "Thank you for signing up for the '#{@event.name}'!"
    else
      flash[:alert] = 'Your name is not on the invitation list'
    end

    redirect_to event_path(@event)
  end
end
