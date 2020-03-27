class RegionsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @regions=Region.all
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.create(region_params)
    redirect_to regions_path
  end

  def myajax
    @blok = params[:blok_num].to_i
    @key = params[:key].to_i
    @ans = Blok.search(@blok,@key)
    @month = Info.find(@ans).created_at.month
    @day = Info.find(@ans).created_at.day
    @email = User.find(Blok.find(@ans).user_id).email

    @info = Info.find(@ans)
    data = {:message => @ans, :content => @info.content, :email => @email, :month => @month, :day => @day}
    render :json => data, :status => :ok
  end
  def show
    @bloks = Blok.all
    @blok = Blok.new
    @lat = 0
    @lng = 0
    @region = Region.find(params[:id])
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    @region.update(region_params)

    redirect_to region_path(@region)
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path
  end

  def replypost
    @comment=Comment.new
    @comment.content=params[:reply]
    @comment.info_id=params[:info_id]
    @comment.save
    @info=Info.find(params[:info_id])
  end

  def nevy
    @b_id = Blok.search(params[:up_input], 38)
    puts @b_id

  end

  private
  def region_params
    params.require(:region).permit(:name)
  end

end
