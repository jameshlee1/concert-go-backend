class EventsController < ApplicationController
  def index
    events = Event.all
    render json: events
  end

  def create
    event = Event.create(event_params)
    if event.valid?
      render json: event
    else
      render json: event.errors, status: 422
    end
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    if event.valid?
      render json: event
    else
      render json: event.errors, status: 422
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: event
  end

  private

  def event_params
    params.require(:event).permit(:city, :state, :venue, :artist, :date, :show_time, :genre, :images, :user_id, :spotify)
  end
end
