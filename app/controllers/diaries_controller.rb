class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end


  def show
      @works = Work.find(params[:works_id])
  end

  def edit
      @diary = Diary.find(params[:id])
  end




  def update


      @diary = Diary.find(params[:id])
      if @diary.update(diary_params)
       redirect_to diaries_path
end

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
