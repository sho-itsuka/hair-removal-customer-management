class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
  end

  private
  def customer_params
    params.require(:customer).permit(:nickname, :salon_name)
  end
end
