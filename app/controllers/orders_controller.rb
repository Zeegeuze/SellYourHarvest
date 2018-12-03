class OrdersController < ApplicationController
 before_action :set_order, only: [:show, :edit, :update, :destroy]
  def new
    @seller = Seller.find(params[:seller_id])
    @customer = Customer.find(params[:customer_id])
    @order = Order.new
  end

  def index
    @seller = Seller.find(params[:seller_id])
    @customer = Customer.find(params[:customer_id])
    if params[:query].present?
      sql_query = " orders.products.name ILIKE :query"
      @orders = Order.where(sql_query, query: "%#{params[:query]}%")
    else
      @orders = Order.all
    end
    @orders.order(created_at: :desc)
  end

  def create
    @seller = Seller.find(params[:seller_id])
    @customer = Customer.find(params[:customer_id])
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    if @order.destroy
      redirect_to orders_path
    else
      render :new
    end
  end

  private
  def set_order
    @seller = Seller.find(params[:seller_id])
    @customer = Customer.find(params[:customer_id])
    @order = Order.find(params[:id])
  end

  def order_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:order).permit(:size, :customer_id, :product_id)
  end
end
