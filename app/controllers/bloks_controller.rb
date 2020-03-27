class BloksController < ApplicationController
  def index
    Blok.all.each do |b|
      b.next_id = 7
    end
    @blok = Blok.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @bloks }
    end
  end

  def new
    @blok = Blok.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @blok }
    end
    @blok.next_id = 55
  end

  def create
    @blok = Blok.new(blok_params)
    @blok.user = current_user
    @info = Info.new
    @info.save
    @blok.user_id = current_user.id
    respond_to do |format|
      if @blok.save
        flash[:notice] = 'Blok was successfully created.'
        format.html { redirect_to(@blok) }
        format.xml  { render xml: @blok, status: :created, location: @blok }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @blok.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @blok = Blok.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @blok }
    end
    redirect_to :back
  end

  def edit
    @blok = Blok.find(params[:id])
  end

  def destroy
    @blok = Blok.find(params[:id])
    @blok.destroy

    respond_to do |format|
      format.html { redirect_to(bloks_url) }
      format.xml  { head :ok }
    end
  end

  private
  def blok_params
    params.require(:blok).permit(:lat, :lng)
  end
end
