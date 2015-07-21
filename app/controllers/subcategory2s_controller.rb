class Subcategory2sController < ApplicationController
  before_action :set_subcategory2, only: [:show, :edit, :update, :destroy]

  # GET /subcategory2s
  # GET /subcategory2s.json
  def index
    @subcategory2s = Subcategory2.all
  end

  # GET /subcategory2s/1
  # GET /subcategory2s/1.json
  def show
  end

  # GET /subcategory2s/new
  def new
    @subcategory2 = Subcategory2.new
  end

  # GET /subcategory2s/1/edit
  def edit
  end

  # POST /subcategory2s
  # POST /subcategory2s.json
  def create
    @subcategory2 = Subcategory2.new(subcategory2_params)

    respond_to do |format|
      if @subcategory2.save
        format.html { redirect_to @subcategory2, notice: 'Subcategory2 was successfully created.' }
        format.json { render :show, status: :created, location: @subcategory2 }
      else
        format.html { render :new }
        format.json { render json: @subcategory2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategory2s/1
  # PATCH/PUT /subcategory2s/1.json
  def update
    respond_to do |format|
      if @subcategory2.update(subcategory2_params)
        format.html { redirect_to @subcategory2, notice: 'Subcategory2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategory2 }
      else
        format.html { render :edit }
        format.json { render json: @subcategory2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategory2s/1
  # DELETE /subcategory2s/1.json
  def destroy
    @subcategory2.destroy
    respond_to do |format|
      format.html { redirect_to subcategory2s_url, notice: 'Subcategory2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory2
      @subcategory2 = Subcategory2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory2_params
      params.require(:subcategory2).permit(:listing_status, :category_id)
    end
end
