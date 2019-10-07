class CommentsController < ApplicationController
  def create
    @colum = Colum.find(params[:colum_id])
    @comment = @colum.comments.build(comment_params)
    @comments = @colum.comments
    respond_to do |format|
      if @comment.save
        @count = @comments.count
        format.js { render :index }
      else
        @count = @comments.count
        format.js { render :error }
      end
    end
  end

  def destroy
    #@post_comment = PostComment.find_by(id: params[:id], post_id: params[:post_id], profile_id: current_profile.id)
    #if @post_comment.destroy
    #  render :index
    #end
  end

  private

  def comment_params
    params.require(:comment).permit(:colum_id, :name, :comment)
  end
end
