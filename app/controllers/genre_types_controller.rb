class GenreTypesController < ApplicationController
  before_action :set_genre_type, only: [:show, :edit, :update, :destroy]

  # GET /genre_types
  # GET /genre_types.json
  def index
    @genre_types = GenreType.all
  end

  # GET /genre_types/1
  # GET /genre_types/1.json
  def show
  end

  # GET /genre_types/new
  def new
    @genre_type = GenreType.new
  end

  # GET /genre_types/1/edit
  def edit
  end

  # POST /genre_types
  # POST /genre_types.json
  def create
    @genre_type = GenreType.new(genre_type_params)
    respond_to do |format|
      if @genre_type.save
        if params[:commit] =="Create Genre type"
        format.html { redirect_to @genre_type, notice: 'Genre type was successfully created.' }
        else
          format.html { redirect_to new_genre_type_path, notice: 'Genre type was successfully created.' }
        end
        format.json { render :show, status: :created, location: @genre_type }
      else
        format.html { render :new }
        format.json { render json: @genre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_types/1
  # PATCH/PUT /genre_types/1.json
  def update
    respond_to do |format|
      if @genre_type.update(genre_type_params)
        format.html { redirect_to @genre_type, notice: 'Genre type was successfully updated.' }
        format.json { render :show, status: :ok, location: @genre_type }
      else
        format.html { render :edit }
        format.json { render json: @genre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_types/1
  # DELETE /genre_types/1.json
  def destroy
    @genre_type.destroy
    respond_to do |format|
      format.html { redirect_to genre_types_url, notice: 'Genre type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_type
      @genre_type = GenreType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_type_params
      params[:genre_type].permit(:genre_type_name, :genre_language_id)
    end
end
