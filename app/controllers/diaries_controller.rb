class DiariesController < ApplicationController
  def index
@diaries = Diary.all
  end
  def new
    @diaries = Diary.new
  end
  def create
    @diaries = Diary.new(diary_params)
    if @diaries.save
     redirect_to diaries_path
    else
    end
  end
  private
  def diary_params
    params.require(:diary).permit(:title,:name,:weather,:content)
end
end
