class CommentsController < ApplicationController

  def index 
    @comment = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @comments }
    end
  end
  
  def new 
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @comment }
    end
  end

  def create  
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to(@comment) }
        format.xml  { render xml: @comment, status: :created, location: @comment }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def show 
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @comment }
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update  
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        flash[:notice] = 'Comment was successfully updated.'
        format.html { redirect_to(@comment) }
        format.xml  { head :ok }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :info_id)
  end

end
