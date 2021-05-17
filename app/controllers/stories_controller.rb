class StoriesController < ApplicationController
  before_action :authenticate_user!, except: %i[ index show ]
  before_action :set_story, only: %i[ show edit update destroy ]

  def index
    @stories = Story.all
  end

  def show
    @comments = @story.comments
    @comments_counter = @story.comments.count
    @comment = Comment.new
  end

  def new
    @story = Story.new
  end

  def edit
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: "Story was successfully created." }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: "Story was successfully updated." }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: "Story was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:body, :title)
  end
end
