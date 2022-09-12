class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]

  def show
    @category = Category.find(1)
    @products = @category.products.order(created_at: :desc)
  end
end
