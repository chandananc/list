class Subcategory1sController < ApplicationController
  before_action :set_subcategory1, only: [:show, :edit, :update, :destroy]

  # GET /subcategory1s
  # GET /subcategory1s.json
  def index
    @subcategory1s = Subcategory1.all
  end

  # GET /subcategory1s/1
  # GET /subcategory1s/1.json
  def show
  end

  # GET /subcategory1s/new
  def new
    @subcategory1 = Subcategory1.new
  end

  # GET /subcategory1s/1/edit
  def edit
  end

  # POST /subcategory1s
  # POST /subcategory1s.json
  def create
    @subcategory1 = Subcategory1.new(subcategory1_params)

    respond_to do |format|
      if @subcategory1.save
        format.html { redirect_to @subcategory1, notice: 'Subcategory1 was successfully created.' }
        format.json { render :show, status: :created, location: @subcategory1 }
      else
        format.html { render :new }
        format.json { render json: @subcategory1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategory1s/1
  # PATCH/PUT /subcategory1s/1.json
  def update
    respond_to do |format|
      if @subcategory1.update(subcategory1_params)
        format.html { redirect_to @subcategory1, notice: 'Subcategory1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategory1 }
      else
        format.html { render :edit }
        format.json { render json: @subcategory1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategory1s/1
  # DELETE /subcategory1s/1.json
  def destroy
    @subcategory1.destroy
    respond_to do |format|
      format.html { redirect_to subcategory1s_url, notice: 'Subcategory1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory1
      @subcategory1 = Subcategory1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory1_params
      params.require(:subcategory1).permit(:listing_type, :category_id)
    end
end
