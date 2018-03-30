class UserCommentsController < ApplicationController
  def create
  	params[:user_comment][:ip_address] = request.remote_ip
  	UserComment.create(user_comment_params)
  	respond_to do |format|
      format.js
    end
    redirect_to root_path
  end

  def index
  	@user_comment = UserComment.new
  	@user_comments = UserComment.all.reverse.where('(user_comments.created_at - user_comments.created_at) > 30')
  end

  private
  def user_comment_params
  	params.require(:user_comment).permit(:comment,:ip_address)
  end
end
