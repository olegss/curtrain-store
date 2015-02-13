class AnketaController < ApplicationController
  before_action :set_anketum, only: [:show, :edit, :update, :destroy]

  # GET /anketa
  # GET /anketa.json
  def index
    @anketa = Anketum.all
  end

  # GET /anketa/1
  # GET /anketa/1.json
  def show
  end

  # GET /anketa/new
  def new
    @anketum = Anketum.new
  end

  # GET /anketa/1/edit
  def edit
  end

  # POST /anketa
  # POST /anketa.json
  def create
    @anketum = Anketum.new(anketum_params)

    respond_to do |format|
      if @anketum.save
        format.html { redirect_to @anketum, notice: 'Anketum was successfully created.' }
        format.json { render :show, status: :created, location: @anketum }
      else
        format.html { render :new }
        format.json { render json: @anketum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anketa/1
  # PATCH/PUT /anketa/1.json
  def update
    respond_to do |format|
      if @anketum.update(anketum_params)
        format.html { redirect_to @anketum, notice: 'Anketum was successfully updated.' }
        format.json { render :show, status: :ok, location: @anketum }
      else
        format.html { render :edit }
        format.json { render json: @anketum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anketa/1
  # DELETE /anketa/1.json
  def destroy
    @anketum.destroy
    respond_to do |format|
      format.html { redirect_to anketa_url, notice: 'Anketum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anketum
      @anketum = Anketum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anketum_params
      params.require(:anketum).permit(:name_store, :email)
    end
end
