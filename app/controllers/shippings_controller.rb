class ShippingsController < ApplicationController
  before_action :set_shipping, only: %i[ show edit update destroy ]

  # GET /shippings or /shippings.json
  def index
    @shippings = Shipping.all
  end

  # GET /shippings/1 or /shippings/1.json
  def show
  end

  # GET /shippings/new
  def new
    @shipping = Shipping.new
  end

  # GET /shippings/1/edit
  def edit
  end

  # POST /shippings or /shippings.json
  def create
    @shipping = Shipping.new(shipping_params)

    respond_to do |format|
      if @shipping.save
        format.html { redirect_to @shipping, notice: "Shipping was successfully created." }
        format.json { render :show, status: :created, location: @shipping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shippings/1 or /shippings/1.json
  def update
    respond_to do |format|
      if @shipping.update(shipping_params)
        format.html { redirect_to @shipping, notice: "Shipping was successfully updated." }
        format.json { render :show, status: :ok, location: @shipping }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippings/1 or /shippings/1.json
  def destroy
    @shipping.destroy!

    respond_to do |format|
      format.html { redirect_to shippings_path, status: :see_other, notice: "Shipping was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping
      @shipping = Shipping.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def shipping_params
      params.expect(shipping: [ :order_id, :pickup_location, :status ])
    end
end
