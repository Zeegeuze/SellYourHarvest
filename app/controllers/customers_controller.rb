class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  def new
    @customer = Customer.new
  end

  def index
    @customer = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    if @set_customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
    else
      render :new
    end
  end

  def destroy
    @customer.destroy
    if @customer.destroy
      redirect_to customer_path
    else
      render :new
    end
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:customer).permit(:first_name, :last_name, :city)
  end
end
