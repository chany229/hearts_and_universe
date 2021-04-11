class CharasController < ApplicationController
  before_action :set_chara, only: [:show, :edit, :update, :destroy]
  before_action :check_user
  before_action :check_admin, only: [:edit, :update, :new, :destroy]
  # GET /charas
  # GET /charas.json
  def index
    @charas = Chara.all
  end

  # GET /charas/1
  # GET /charas/1.json
  def show
  end

  # GET /charas/new
  def new
    @chara = Chara.new
  end

  # GET /charas/1/edit
  def edit
  end

  # POST /charas
  # POST /charas.json
  def create
    @chara = Chara.new(chara_params)

    respond_to do |format|
      if @chara.save
        format.html { redirect_to @chara, notice: 'Chara was successfully created.' }
        format.json { render :show, status: :created, location: @chara }
      else
        format.html { render :new }
        format.json { render json: @chara.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charas/1
  # PATCH/PUT /charas/1.json
  def update
    respond_to do |format|
      if @chara.update(chara_params)
        format.html { redirect_to @chara, notice: 'Chara was successfully updated.' }
        format.json { render :show, status: :ok, location: @chara }
      else
        format.html { render :edit }
        format.json { render json: @chara.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charas/1
  # DELETE /charas/1.json
  def destroy
    @chara.destroy
    respond_to do |format|
      format.html { redirect_to charas_url, notice: 'Chara was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chara
      @chara = Chara.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chara_params
      params.require(:chara).permit(:name, :animal, :ability, :ability_b, :group_before, :group_now, :group_after, :target, :theme, :color1, :color2, :color3, :shape, :sex, :age, :height, :skin1, :skin2, :eye_color, :hair_color, :desc, :weapon)
    end
end
