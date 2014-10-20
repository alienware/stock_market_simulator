class WishlistSharesController < ApplicationController
  before_action :set_wishlist_share, only: [:show, :edit, :update, :destroy]

  # GET /wishlist_shares
  def index
    @wishlist_shares = WishlistShare.all
  end

  # GET /wishlist_shares/1
  def show
  end

  # GET /wishlist_shares/new
  def new
    @wishlist_share = WishlistShare.new
  end

  # GET /wishlist_shares/1/edit
  def edit
  end

  # POST /wishlist_shares
  def create
    @wishlist_share = WishlistShare.new(wishlist_share_params)

    if @wishlist_share.save
      redirect_to @wishlist_share, notice: 'Wishlist share was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wishlist_shares/1
  def update
    if @wishlist_share.update(wishlist_share_params)
      redirect_to @wishlist_share, notice: 'Wishlist share was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wishlist_shares/1
  def destroy
    @wishlist_share.destroy
    redirect_to wishlist_shares_url, notice: 'Wishlist share was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist_share
      @wishlist_share = WishlistShare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wishlist_share_params
      params[:wishlist_share]
    end
end
