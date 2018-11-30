class ProductsController < ApplicationController
before_action :set_product, only: [:show, :edit, :update, :destroy]
  def new
    @product = Product.new
  end

  def index
    if params[:query].present?
      sql_query = " product.name ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
    policy_scope(@rproducts).order(created_at: :desc)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
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
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    if @product.destroy
      redirect_to products_path
    else
      render :new
    end
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:product).permit(:name, :amount, :delivery_option, :stars, :seller_id, :photo)
  end
end
