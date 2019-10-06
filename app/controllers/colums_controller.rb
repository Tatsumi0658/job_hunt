class ColumsController < ApplicationController
  before_action :set_colum, only:[:show]
  def index
    @colums = Colum.all
  end

  def new
    @colum = Colum.new
  end

  def create
    @colum = Colum.new(colum_params)
    if @colum.save
      redirect_to colums_path
    else
      render :new
    end
  end

  def show
  end

  private

  def set_colum
    @colum = Colum.find(params[:id])
  end

  def colum_params
    params.require(:colum).permit(:name, :title, :content)
  end
end
