class EventsController < ApplicationController


	def index
		@events = Event.all.order("game asc")
	end

	def show 
		the_event_id = params["id"]
		@event = Event.find_by :id => the_event_id
	end

	def destroy
    the_event_id = params["id"]
    e= Event.find_by(:id => the_event_id)
    e.destroy
    redirect_to events_url
    end

	def new 
	end

	def create 
		e = Event.new
		e.event = params["event"]
		e.game = params["game"]
		e.image = params["image"]
		e.save
		redirect_to events_url
	end

	def edit
		the_event_id = params["id"]
		@event = Event.find_by(:id => the_event_id)
	end

	def update
	    the_event_id = params["id"]
	    event = Event.find_by(:id => the_event_id)
	    event.game = params["game"]
	    event.image = params["image"]
	    event.save
	    redirect_to events_url
	end


end