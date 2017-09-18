class BlogsController < InheritedResources::Base

  def index
    @blogs = Blog.all
    set_meta_tags(meta_tag index_meta_tags)
  end

  def show
    @blog = params[:id].to_i == 0 ? Blog.where(title: params[:id].gsub(/[-_]/," ")).first : Blog.find(params[:id])
    set_meta_tags(meta_tag(@blog.meta_tag))
  end

  private

    def index_meta_tags
      {
        title: "#thelazyblog",
        og_title: "darienjonathan's #thelazyblog",
        description: "Jack of the Trades Who Loves to Share His Treads",
        image: view_context.asset_path("og.jpg")
      }
    end

    def blog_params
      params.require(:blog).permit(:title, :tag, :summary, :header, :header_img, :content, :stars, :lang)
    end
end
