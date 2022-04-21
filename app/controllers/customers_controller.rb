class CustomersController < ApplicationController
  before_action :set_customer, only: %i[edit show update]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
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
      redirect_to customer_path
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :gender_id, :phone_number, :email, :birthday, :postal_code, :prefecture_id, :city, :address, :building).merge(user_id: current_user.id)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
  
end
