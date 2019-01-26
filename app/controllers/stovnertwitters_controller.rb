class StovnertwittersController < ApplicationController
  before_action :set_stovnertwitter, only: [:show, :edit, :update, :destroy]

  # GET /stovnertwitters
  # GET /stovnertwitters.json
  def index
    @stovnertwitters = Stovnertwitter.all
  end

  # GET /stovnertwitters/1
  # GET /stovnertwitters/1.json
  def show
  end

  # GET /stovnertwitters/new
  def new
    @stovnertwitter = Stovnertwitter.new
  end

  # GET /stovnertwitters/1/edit
  def edit
  end

  # POST /stovnertwitters
  # POST /stovnertwitters.json
  def create
    @stovnertwitter = Stovnertwitter.new(stovnertwitter_params)

    respond_to do |format|
      if @stovnertwitter.save
        format.html { redirect_to @stovnertwitter, notice: 'Stovnertwitter was successfully created.' }
        format.json { render :show, status: :created, location: @stovnertwitter }
      else
        format.html { render :new }
        format.json { render json: @stovnertwitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stovnertwitters/1
  # PATCH/PUT /stovnertwitters/1.json
  def update
    respond_to do |format|
      if @stovnertwitter.update(stovnertwitter_params)
        format.html { redirect_to @stovnertwitter, notice: 'Stovnertwitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @stovnertwitter }
      else
        format.html { render :edit }
        format.json { render json: @stovnertwitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stovnertwitters/1
  # DELETE /stovnertwitters/1.json
  def destroy
    @stovnertwitter.destroy
    respond_to do |format|
      format.html { redirect_to stovnertwitters_url, notice: 'Stovnertwitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stovnertwitter
      @stovnertwitter = Stovnertwitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stovnertwitter_params
      params.require(:stovnertwitter).permit(:body, :username)
    end
end
