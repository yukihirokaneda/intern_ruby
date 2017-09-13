class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @works = Work.new
  end

  def show
    @works = Work.find(params[:id])
  end

  def edit
      @works = Work.find(params[:id])
  end

  def create
    @works = Work.new(work_params)

    if @works.save
     redirect_to works_path
    else
    end
  end

  def update

      @work = Work.find(params[:id])
      if @work.update(work_params)
       redirect_to works_path
      end
  end
  def destroy
     @work = Work.find(params[:id]).destroy
        redirect_to works_path
  end

  def contact
    @works = Work.find(params[:id])
  end

  private

    def work_params
      params.require(:work).permit(:title,:prname,:username,:prm,:cre,:destroy,:contact)
    end
end
