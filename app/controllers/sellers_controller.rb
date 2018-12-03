class SellersController < ApplicationController
before_action :set_seller, only: [:show, :edit, :update, :destroy]
  def new
    @seller = Seller.new
  end

  def index
    @sellers = Seller.all
  end

  def create
    @seller = Seller.new(seller_params)
    if @seller.save
      redirect_to sellers_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @seller.update(seller_params)
      redirect_to seller_path(@seller)
    else
      render :new
    end
  end

  def destroy
    @seller.destroy
    if @seller.destroy
      redirect_to sellers_path
    else
      render :new
    end
  end

  private
  def set_seller
    @seller = Seller.find(params[:id])
  end

  def seller_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:seller).permit(:company_name, :contact_person, :address)
  end
end
