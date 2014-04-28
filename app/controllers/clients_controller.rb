class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
    # @launch_date = @client.launch_date.order()
    @now = Time.now
    respond_to do |format|
      format.html
      format.json { render json: ClientsDatatable.new(view_context) }
      format.xls
    end

    @array = [
    @clients.each do |client| 
          ((2015 * 12 + 1) - (client.launch_date.year * 12 + client.launch_date.month)) * client.price.cost
    end
  ]
    @sum2014 = @array.sum

    # @array = []
    # @clients.each do |i|
    #   @array << User.where("id = ?", i.reviewer_id )
    # end

    # @array = []
    # @clients.each do |client|
    # @array = @clients.map { |item| ((2015 * 12 + 1) - (@client.launch_date.year * 12 + @client.launch_date.month) * @client.price.cost) }
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = Client.find(params[:id])
    @now = Time.now
  end

  # GET /clients/new
  def new
    @client = Client.new
    can? :create, @client
    @user = current_user
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
    @user = current_user
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    @user = current_user

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client }
      else
        format.html { render action: 'new' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :division_id, :region, :price_id, :internal, :launch_date)
    end
end
