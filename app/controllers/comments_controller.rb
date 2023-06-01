class CommentsController < ApplicationController
  before_action :set_article


  def create
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @article, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render 'articles/show' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_article
      @article = Article.find(params[:article_id])
    end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
  