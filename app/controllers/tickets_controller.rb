class TicketsController < ApplicationController
  #before_action :check_authorization, only: [:edit, :destroy]
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, except: [:index, :edit] 

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def buy
    @ticket = Ticket.find(params[:ticket_id])
    @ticket.user = current_user
    @ticket.save
    respond_to do |format|
      format.html { redirect_to @ticket, notice: 'Ticket was successfully bought.' }
      format.json { head :no_content }
    end
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:pdf, :price, :event_id)
    end

    #doesn't work properly so I used statements in views. 
    #def check_authorization
     # raise not_authorized unless @ticket.user == current_user
    #end
end
