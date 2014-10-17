class GenreLanguagesController < ApplicationController
  before_action :set_genre_language, only: [:show, :edit, :update, :destroy]


  # GET /genre_languages
  # GET /genre_languages.json
  def index
    @genre_languages = GenreLanguage.all
  end

  # GET /genre_languages/1
  # GET /genre_languages/1.json
  def show
  end

  # GET /genre_languages/new
  def new
    @genre_language = GenreLanguage.new
  end

  # GET /genre_languages/1/edit
  def edit
  end

  # POST /genre_languages
  # POST /genre_languages.json
  def create
    @genre_language = GenreLanguage.new(genre_language_params)

    respond_to do |format|
      if @genre_language.save
        if params[:commit]=="Create Genre language"
          format.html { redirect_to @genre_language, notice: 'Genre language was successfully created.' }
        else
          format.html { redirect_to new_genre_language_path, notice: 'Genre language was successfully created.' }
        end
        format.json { render :show, status: :created, location: @genre_language }
      else
        format.html { render :new }
        format.json { render json: @genre_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_languages/1
  # PATCH/PUT /genre_languages/1.json
  def update
    respond_to do |format|
      if @genre_language.update(genre_language_params)
        format.html { redirect_to @genre_language, notice: 'Genre language was successfully updated.' }
        format.json { render :show, status: :ok, location: @genre_language }
      else
        format.html { render :edit }
        format.json { render json: @genre_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_languages/1
  # DELETE /genre_languages/1.json
  def destroy
    @genre_language.destroy
    respond_to do |format|
      format.html { redirect_to genre_languages_url, notice: 'Genre language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_genre_language
    @genre_language = GenreLanguage.find(params[:genre_language_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def genre_language_params
    params[:genre_language].permit(:genre_language_name)
  end
end
