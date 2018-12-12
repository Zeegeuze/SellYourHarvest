class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @products = Product.all
    @products = Product.where('name LIKE ?', "%#{params[:term]}%")
  end

  def TQ
  end

  def faq

  end

  def contact
  end

  def about
  end
end
