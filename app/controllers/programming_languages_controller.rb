class ProgrammingLanguagesController < ApplicationController
  def index
    @programming_languages = ProgrammingLanguage.all
  end

  def show
    @language = ProgrammingLanguage.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
