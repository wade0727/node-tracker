class HeadendsController < ApplicationController
  before_action :set_headend, only: [:show, :edit, :update, :destroy]

  # GET /headends
  # GET /headends.json
  def index
    @headends = Headend.all
  end

  # GET /headends/1
  # GET /headends/1.json
  def show
    @headend = Headend.find(params[:id])
    @headend_nodes = @headend.nodes.all
  end

  # GET /headends/new
  def new
    @headend = Headend.new
  end

  # GET /headends/1/edit
  def edit
  end

  # POST /headends
  # POST /headends.json
  def create
    @headend = Headend.new(headend_params)

    respond_to do |format|
      if @headend.save
        format.html { redirect_to @headend, notice: 'Headend was successfully created.' }
        format.json { render :show, status: :created, location: @headend }
      else
        format.html { render :new }
        format.json { render json: @headend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headends/1
  # PATCH/PUT /headends/1.json
  def update
    respond_to do |format|
      if @headend.update(headend_params)
        format.html { redirect_to @headend, notice: 'Headend was successfully updated.' }
        format.json { render :show, status: :ok, location: @headend }
      else
        format.html { render :edit }
        format.json { render json: @headend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headends/1
  # DELETE /headends/1.json
  def destroy
    @headend.destroy
    respond_to do |format|
      format.html { redirect_to headends_url, alert: 'Headend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headend
      @headend = Headend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headend_params
      params.require(:headend).permit(:headend)
    end
end
