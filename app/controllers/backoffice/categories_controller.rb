class Backoffice::CategoriesController < BackofficeController
  before_action :set_category, only:[:edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = CategoryService.create(params_category)
    unless @category.errors.any?
      redirect_to backoffice_categories_path, notice: get_message_success
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @category.update(params_category)
      redirect_to backoffice_categories_path, notice: get_message_success
    else
      render :edit
    end
  end

  private

  def get_message_success
    "A Categoria ( #{@category.description} ) foi salva com sucessso!"
  end

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def params_category
    params.require(:category).permit(:description)
  end

end
