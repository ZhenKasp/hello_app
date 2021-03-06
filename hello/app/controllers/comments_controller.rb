# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comments = Comment.find(params[:id])
    @comments.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
