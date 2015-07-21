class SubaCategoriesController < ApplicationController
  before_action :set_suba_category, only: [:show, :edit, :update, :destroy]

  # GET /suba_categories
  # GET /suba_categories.json
  def index
    @suba_categories = SubaCategory.all
  end

  # GET /suba_categories/1
  # GET /suba_categories/1.json
  def show
  end

  # GET /suba_categories/new
  def new
    @suba_category = SubaCategory.new
  end

  # GET /suba_categories/1/edit
  def edit
  end

  # POST /suba_categories
  # POST /suba_categories.json
  def create
    @suba_category = SubaCategory.new(suba_category_params)

    respond_to do |format|
      if @suba_category.save
        format.html { redirect_to @suba_category, notice: 'Suba category was successfully created.' }
        format.json { render :show, status: :created, location: @suba_category }
      else
        format.html { render :new }
        format.json { render json: @suba_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suba_categories/1
  # PATCH/PUT /suba_categories/1.json
  def update
    respond_to do |format|
      if @suba_category.update(suba_category_params)
        format.html { redirect_to @suba_category, notice: 'Suba category was successfully updated.' }
        format.json { render :show, status: :ok, location: @suba_category }
      else
        format.html { render :edit }
        format.json { render json: @suba_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suba_categories/1
  # DELETE /suba_categories/1.json
  def destroy
    @suba_category.destroy
    respond_to do |format|
      format.html { redirect_to suba_categories_url, notice: 'Suba category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suba_category
      @suba_category = SubaCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suba_category_params
      params.require(:suba_category).permit(:listing_type, :category_id)
    end
end
