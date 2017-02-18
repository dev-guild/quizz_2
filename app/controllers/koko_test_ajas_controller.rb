class KokoTestAjasController < ApplicationController
  before_action :set_koko_test_aja, only: [:show, :edit, :update, :destroy]

  # GET /koko_test_ajas
  # GET /koko_test_ajas.json
  def index
    @koko_test_ajas = KokoTestAja.all
  end

  # GET /koko_test_ajas/1
  # GET /koko_test_ajas/1.json
  def show
  end

  # GET /koko_test_ajas/new
  def new
    @koko_test_aja = KokoTestAja.new
  end

  # GET /koko_test_ajas/1/edit
  def edit
  end

  # POST /koko_test_ajas
  # POST /koko_test_ajas.json
  def create
    @koko_test_aja = KokoTestAja.new(koko_test_aja_params)

    respond_to do |format|
      if @koko_test_aja.save
        format.html { redirect_to @koko_test_aja, notice: 'Koko test aja was successfully created.' }
        format.json { render :show, status: :created, location: @koko_test_aja }
      else
        format.html { render :new }
        format.json { render json: @koko_test_aja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /koko_test_ajas/1
  # PATCH/PUT /koko_test_ajas/1.json
  def update
    respond_to do |format|
      if @koko_test_aja.update(koko_test_aja_params)
        format.html { redirect_to @koko_test_aja, notice: 'Koko test aja was successfully updated.' }
        format.json { render :show, status: :ok, location: @koko_test_aja }
      else
        format.html { render :edit }
        format.json { render json: @koko_test_aja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koko_test_ajas/1
  # DELETE /koko_test_ajas/1.json
  def destroy
    @koko_test_aja.destroy
    respond_to do |format|
      format.html { redirect_to koko_test_ajas_url, notice: 'Koko test aja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koko_test_aja
      @koko_test_aja = KokoTestAja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koko_test_aja_params
      params.require(:koko_test_aja).permit(:name, :age)
    end
end
