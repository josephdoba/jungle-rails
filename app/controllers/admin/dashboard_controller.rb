class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]

  before_filter :authorize

  def cool
  end

  def free
  end

  def show
    @products_count = Product.order(id: :desc).all.count
    @category_count = Category.order(id: :desc).all.count
  end
end
