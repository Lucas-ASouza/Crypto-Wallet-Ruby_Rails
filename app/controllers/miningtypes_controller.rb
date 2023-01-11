class MiningtypesController < ApplicationController
  before_action :set_miningtype, only: %i[ show edit update destroy ]

  # GET /miningtypes or /miningtypes.json
  def index
    @miningtypes = Miningtype.all
  end

  # GET /miningtypes/1 or /miningtypes/1.json
  def show
  end

  # GET /miningtypes/new
  def new
    @miningtype = Miningtype.new
  end

  # GET /miningtypes/1/edit
  def edit
  end

  # POST /miningtypes or /miningtypes.json
  def create
    @miningtype = Miningtype.new(miningtype_params)

    respond_to do |format|
      if @miningtype.save
        format.html { redirect_to miningtype_url(@miningtype), notice: "Miningtype was successfully created." }
        format.json { render :show, status: :created, location: @miningtype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @miningtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miningtypes/1 or /miningtypes/1.json
  def update
    respond_to do |format|
      if @miningtype.update(miningtype_params)
        format.html { redirect_to miningtype_url(@miningtype), notice: "Miningtype was successfully updated." }
        format.json { render :show, status: :ok, location: @miningtype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @miningtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miningtypes/1 or /miningtypes/1.json
  def destroy
    @miningtype.destroy

    respond_to do |format|
      format.html { redirect_to miningtypes_url, notice: "Miningtype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miningtype
      @miningtype = Miningtype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def miningtype_params
      params.require(:miningtype).permit(:description, :string, :acronym)
    end
end
