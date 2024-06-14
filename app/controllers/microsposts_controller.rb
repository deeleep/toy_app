class MicrospostsController < ApplicationController
  before_action :set_microspost, only: %i[ show edit update destroy ]

  # GET /microsposts or /microsposts.json
  def index
    @microsposts = Microspost.all
  end

  # GET /microsposts/1 or /microsposts/1.json
  def show
  end

  # GET /microsposts/new
  def new
    @microspost = Microspost.new
  end

  # GET /microsposts/1/edit
  def edit
  end

  # POST /microsposts or /microsposts.json
  def create
    @microspost = Microspost.new(microspost_params)

    respond_to do |format|
      if @microspost.save
        format.html { redirect_to microspost_url(@microspost), notice: "Microspost was successfully created." }
        format.json { render :show, status: :created, location: @microspost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @microspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microsposts/1 or /microsposts/1.json
  def update
    respond_to do |format|
      if @microspost.update(microspost_params)
        format.html { redirect_to microspost_url(@microspost), notice: "Microspost was successfully updated." }
        format.json { render :show, status: :ok, location: @microspost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @microspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microsposts/1 or /microsposts/1.json
  def destroy
    @microspost.destroy

    respond_to do |format|
      format.html { redirect_to microsposts_url, notice: "Microspost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microspost
      @microspost = Microspost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def microspost_params
      params.require(:microspost).permit(:content, :user_id)
    end
end
