class ClientsController < ApplicationController
  before_action :authenticate_consultation!
  before_action :set_consultation
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET consultants/1/clients
  def index
    @clients =  @consultation.clients
  end

  # GET consultants/1/clients/1
  def show
  end

  # GET consultants/1/clients/new
  def new
    @client =  @consultation.clients.build
  end

  # GET consultants/1/clients/1/edit
  def edit
  end

  # POST consultants/1/clients
  def create
    @client =  @consultation.clients.build(client_params)

    if @client.save
      redirect_to([@client.consultation, @client], notice: 'Client was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT consultants/1/clients/1
  def update
    if @client.update_attributes(client_params)
      redirect_to([@client.consultant, @client], notice: 'Client was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE consultants/1/clients/1
  def destroy
    @client.destroy

    redirect_to consultation_clients_url(@consultation)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
     @consultation = Consultation.find(params[:consultation_id])
    end

    def set_client
      @client =  @consultation.clients.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :contact, :email, :location, :request_by, :hourly_rate, :note)
    end
end
