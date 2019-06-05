class CatRentalRequestController < ApplicationController
  def new
    @request = CatRentalRequest.new
  end

  def create
    @request = CatRentalRequest.new(rental_params)
    if @request.save
      redirect_to cat_url(Cat.find(@request.cat_id))
    else
      render json: @request.errors.full_messages, status: 422
    end
  end

  private
  def rental_params
    params.require(:rental).permit(:cat_id, :start_date, :end_date)
  end
end
