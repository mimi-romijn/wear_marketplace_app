class ExploresController < ApplicationController
  before_action :set_explore, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /explores or /explores.json
  def index
    @explores = Explore.all
  end

  # GET /explores/1 or /explores/1.json
  def show
  end

  # GET /explores/new
  def new
    @explore = Explore.new
  end

  # GET /explores/1/edit
  def edit
  end

  # POST /explores or /explores.json
  def create
    @explore = Explore.new(explore_params)
    @explore.user = current_user
    @explore.photo.attach(params[:explore][:photo])

    respond_to do |format|
      if @explore.save
        format.html { redirect_to @explore, notice: "Explore was successfully created." }
        format.json { render :show, status: :created, location: @explore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explores/1 or /explores/1.json
  def update
    respond_to do |format|
      if @explore.update(explore_params)
        format.html { redirect_to @explore, notice: "Explore was successfully updated." }
        format.json { render :show, status: :ok, location: @explore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explores/1 or /explores/1.json
  def destroy
    @explore.destroy
    respond_to do |format|
      format.html { redirect_to explores_url, notice: "Explore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explore
      @explore = Explore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def explore_params
      params.require(:explore).permit(:title, :description, :price)
    end
end
