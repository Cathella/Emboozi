class Stories::CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_story

  def create
    @comment = @story.comments.new comment_params
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to story_path(@story, anchor: "comment_#{@comment.id}"), notice: "Comment Added." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_story
    @story = Story.find(params[:story_id])
  end
end
