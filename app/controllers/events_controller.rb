class EventsController < ApplicationController

  def index
    @event = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @events }
    end
  end

  def new @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @event }
    end
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        flash[:notice] = 'Event was successfully created.'
        format.html { redirect_to(@event) }
        format.xml  { render xml: @event, status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @event }
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end

   private
  def event_params
    params.require(:event).permit(:type, :duration, :start, :end)
  end

end
