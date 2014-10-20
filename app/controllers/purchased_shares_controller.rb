class PurchasedSharesController < ApplicationController
  before_action :set_purchased_share, only: [:show, :edit, :update, :destroy]

  # GET /purchased_shares
  def index
    @purchased_shares = PurchasedShare.all
  end

  # GET /purchased_shares/1
  def show
  end

  # GET /purchased_shares/new
  def new
    @purchased_share = PurchasedShare.new
  end

  # GET /purchased_shares/1/edit
  def edit
  end

  # POST /purchased_shares
  def create
    @purchased_share = PurchasedShare.new(purchased_share_params)

    if @purchased_share.save
      redirect_to @purchased_share, notice: 'Purchased share was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /purchased_shares/1
  def update
    if @purchased_share.update(purchased_share_params)
      redirect_to @purchased_share, notice: 'Purchased share was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /purchased_shares/1
  def destroy
    @purchased_share.destroy
    redirect_to purchased_shares_url, notice: 'Purchased share was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchased_share
      @purchased_share = PurchasedShare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purchased_share_params
      params[:purchased_share]
    end
end
