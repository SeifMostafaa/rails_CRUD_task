class Api::ChaptersController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def index
    @chapters = Chapter.all
    render json: @chapters
  end

  def show
    @chapter = Chapter.find(params[:id]) 
    render json: @chapter
  end

  def create
    @chapter = Chapter.create(chapter_params)  
    render json: @chapter
  end

  def update
    @chapter = Chapter.find(params[:id])
    @chapter.update(chapter_params)

    render json: @chapter
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy 
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :content, :book_id)
  end
end
