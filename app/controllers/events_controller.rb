class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  def index
    @events = Event.all
    @user = User.find(current_user.id)
  end

  # GET /events/1
  def show
    @event= Event.find(params[:id])
  end
  
  def join
    @event = Event.find(params[:id])
    @event.users << current_user  # add current_user to attendee list
    redirect_to @event
  end

  def leave
    @event = Event.find(params[:id])
    @event.users.delete(current_user.id)   # remove current_user from attendee list
    redirect_to @event
  end
 
  # GET /events/new
  def new
    @event = Event.new
    @user = User.find(current_user.id).first_name
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    @user = User.find(current_user.id).first_name
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    
    #redirect_to events_path
  end

  # PATCH/PUT /events/1
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :date_start, :time_from, :time_to, :location, :host_id, :host_name, :host_contact, :content)
    end
end
