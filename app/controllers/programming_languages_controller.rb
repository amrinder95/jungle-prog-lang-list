class ProgrammingLanguagesController < ApplicationController

  def index
    @programming_languages = ProgrammingLanguage.all
  end

  def show
    @language = ProgrammingLanguage.find(params[:id])
  end

  def new
    @language = ProgrammingLanguage.new
  end

  def create
    @language = ProgrammingLanguage.new(programming_language_params)
    if @language.save
      redirect_to programming_language_path(@language), notice: 'Programming language was successfully added.'
    else
      render :new
    end
  end

  def edit
    @language = ProgrammingLanguage.find(params[:id])
  end

  def update
    @language = ProgrammingLanguage.find(params[:id])
    @language.update(programming_language_params)
    if @language.save
      redirect_to programming_language_path(@language), notice: 'Programming language was successfully edited.'
    else
      render :edit
    end
  end

  def destroy
    @language = ProgrammingLanguage.find(params[:id])
    @language.destroy
  end

  private 

  def programming_language_params
    params.require(:programming_language).permit(:title, :description, :link)
  end

end
