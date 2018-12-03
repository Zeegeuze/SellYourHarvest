class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @seller = Seller.find(params[:seller_id])
    @product = Product.new
  end

  def index
    @seller = Seller.find(params[:seller_id])
    if params[:query].present?
      sql_query = " product.name ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
    @products.order(created_at: :desc)
  end

  def create
    @seller = Seller.find(params[:seller_id])
    @product = Product.new(product_params)
    @product.seller = Seller.find(params[:seller_id])
    if @product.save!
      redirect_to seller_product_path(@seller, @product)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to seller_product_path(@seller, @product)
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    if @product.destroy
      redirect_to seller_products_path(@seller, @reports)
    else
      render :new
    end
  end

  private
  def set_product
    @seller = Seller.find(params[:seller_id])
    @product = Product.find(params[:id])
  end

  def product_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:product).permit(:name, :amount, :delivery_option, :stars, :seller_id, :photo)
  end
end
