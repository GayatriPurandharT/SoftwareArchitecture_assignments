class ThemainsController < ApplicationController
  before_action :set_themain, only: [:show, :edit, :update, :destroy]

  # GET /themains
  # GET /themains.json
  def index
    @themains = Themain.all
  end

  # GET /themains/1
  # GET /themains/1.json
  def show
  end

  # GET /themains/new
  def new
    @themain = Themain.new
  end

  # GET /themains/1/edit
  def edit
  end

  # POST /themains
  # POST /themains.json
  def create
    @themain = Themain.new(themain_params)

    respond_to do |format|
      if @themain.save
        format.html { redirect_to @themain, notice: 'Themain was successfully created.' }
        format.json { render :show, status: :created, location: @themain }
      else
        format.html { render :new }
        format.json { render json: @themain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /themains/1
  # PATCH/PUT /themains/1.json
  def update
    respond_to do |format|
      if @themain.update(themain_params)
        format.html { redirect_to @themain, notice: 'Themain was successfully updated.' }
        format.json { render :show, status: :ok, location: @themain }
      else
        format.html { render :edit }
        format.json { render json: @themain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themains/1
  # DELETE /themains/1.json
  def destroy
    @themain.destroy
    respond_to do |format|
      format.html { redirect_to themains_url, notice: 'Themain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_themain
      @themain = Themain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def themain_params
      params.fetch(:themain, {})
    end
end
