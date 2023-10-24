class OrdersController < ApplicationController
  before_action :set_merchant
  def index
    @orders = @merchant.orders || []
  end
  def create
	 	@order = @merchant.orders.create(params[:order].permit(:amount))
		redirect_to merchant_path(@merchant)
	end

	def destroy
		@order = @merchant.orders.find(params[:id])
		@order.destroy
		redirect_to merchant_orders_path
	end

  private

  def set_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end
end
