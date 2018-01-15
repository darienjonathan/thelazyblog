class CommentsController < InheritedResources::Base

  def create
    blog = Blog.find(params[:blog_id])
    flash[:notice] = "Thankyou for the comment!"
    redirect_to blog_path blog, anchor: "comments" if blog.comments.create!(comment_params)
    
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end

