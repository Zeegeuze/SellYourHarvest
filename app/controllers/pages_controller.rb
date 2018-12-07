class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @products = Product.all
  end

  def TQ
  end

  def FAQ
  end

  def contact
  end

  def about
  end
end
