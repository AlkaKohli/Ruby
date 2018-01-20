class Idea1sController < ApplicationController
  before_action :set_idea1, only: [:show, :edit, :update, :destroy]

  # GET /idea1s
  # GET /idea1s.json
  def index
    @idea1s = Idea1.all
  end

  # GET /idea1s/1
  # GET /idea1s/1.json
  def show
  end

  # GET /idea1s/new
  def new
    @idea1 = Idea1.new
  end

  # GET /idea1s/1/edit
  def edit
  end

  # POST /idea1s
  # POST /idea1s.json
  def create
    @idea1 = Idea1.new(idea1_params)

    respond_to do |format|
      if @idea1.save
        format.html { redirect_to @idea1, notice: 'Idea1 was successfully created.' }
        format.json { render :show, status: :created, location: @idea1 }
      else
        format.html { render :new }
        format.json { render json: @idea1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea1s/1
  # PATCH/PUT /idea1s/1.json
  def update
    respond_to do |format|
      if @idea1.update(idea1_params)
        format.html { redirect_to @idea1, notice: 'Idea1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea1 }
      else
        format.html { render :edit }
        format.json { render json: @idea1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea1s/1
  # DELETE /idea1s/1.json
  def destroy
    @idea1.destroy
    respond_to do |format|
      format.html { redirect_to idea1s_url, notice: 'Idea1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea1
      @idea1 = Idea1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea1_params
      params.require(:idea1).permit(:name, :description, :picture, :age)
    end
end
