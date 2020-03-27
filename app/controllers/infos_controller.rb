class InfosController < ApplicationController
  def index
    @infos=Info.all
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.create(info_params)
    redirect_to infos_path
  end

  def show
    @info = Info.find(params[:id])
    redirect_to :back
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    @info.update(info_params)

    redirect_to info_path(@info)
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to infos_path
  end
  private
  def info_params
    params.require(:info).permit(:title, :content, :user_id, :blok_id)
  end

end
