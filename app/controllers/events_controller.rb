class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@events = Event.all
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end

	private

	def event_params
		params.require(:event).permit(:date)
	end

	def set_event
		@event = Event.find(params[:id])
	end

end
