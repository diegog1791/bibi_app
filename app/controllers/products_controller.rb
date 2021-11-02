class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  # authorize @product

  def index
    # @products = Product.all
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    # @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      redirect_to @product, notice: 'El producto fue agregado exitosamente.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @product.update(product_params)
  end

  def destroy
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :daily_price, :weekly_price, :monthly_price, :description)
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end
