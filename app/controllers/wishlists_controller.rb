class WishlistsController < ApplicationController
  # before_action :set_wishlist, only: %i[ show edit update destroy ]

  # ...
  def index
    @wishlists = current_user.wishlists.joins(:content).select('wishlists.*, contents.title as content_title')
    render json: @wishlists
  end
  
  def show
    @content_name = @wishlist.content.name
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = current_user.wishlists.includes(:content).find(params[:id])
    end
    

    # Only allow a list of trusted parameters through.
    def wishlist_params
      params.require(:wishlist).permit(:content_id, :user_id)
    end

    # Get the name of the content associated with a wishlist
    def content_name(wishlist)
      wishlist.content.name
    end
end
