class CommentsController < InheritedResources::Base

  def create
    blog = Blog.find(params[:blog_id])
    redirect_to blog_path blog if blog.comments.create!(comment_params)
    
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end

