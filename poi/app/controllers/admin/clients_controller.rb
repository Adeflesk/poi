class Admin::ClientsController  < ApplicationController

  respond_to :html
  before_filter :get_client, :except => [:index,:create]

  def index
    @clients = Client.all
    respond_with(@clients)
  end

def show

end

  def edit
    @client = Client.find(params[:id])
  end

  def new

  end

  def destroy
    if @client.destroy
      flash[:notice] = "Destroyed.."
      else
        flash[:alert] = "Bummer.."

    end

  end

  def create
   @client = Client.new(params[:client]) 
   if @client.save
     flash[:notice] = "Created..."
   else
     flash[:alert] = "Bummer..."
   end
     redirect_to admin_clients_path

   end

  def update
    if @client.update_attributes(params[:client])
      flash[:notice] = "Updated..."
    else flash[:alert] = "Bummer..."
    end
    redirect_to admin_clients_path
  end

  private
  def get_client
    @client = params[:id].present? ? Client.find(params[:id]) : Client.new
  end
end

