class PromoBannersController < ApplicationController
  before_action :set_promo_banner, only: %i[ show edit update destroy ]

  # GET /promo_banners or /promo_banners.json
  def index
    @promo_banners = PromoBanner.all
  end

  # GET /promo_banners/1 or /promo_banners/1.json
  def show
  end

  # GET /promo_banners/new
  def new
    @promo_banner = PromoBanner.new
  end

  # GET /promo_banners/1/edit
  def edit
  end

  # POST /promo_banners or /promo_banners.json
  def create
    @promo_banner = PromoBanner.new(promo_banner_params)

    respond_to do |format|
      if @promo_banner.save
        format.html { redirect_to @promo_banner, notice: "Promo banner was successfully created." }
        format.json { render :show, status: :created, location: @promo_banner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promo_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promo_banners/1 or /promo_banners/1.json
  def update
    respond_to do |format|
      if @promo_banner.update(promo_banner_params)
        format.html { redirect_to @promo_banner, notice: "Promo banner was successfully updated." }
        format.json { render :show, status: :ok, location: @promo_banner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promo_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promo_banners/1 or /promo_banners/1.json
  def destroy
    @promo_banner.destroy!

    respond_to do |format|
      format.html { redirect_to promo_banners_path, status: :see_other, notice: "Promo banner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo_banner
      @promo_banner = PromoBanner.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def promo_banner_params
      params.expect(promo_banner: [ :title, :description, :image_url, :active ])
    end
end
