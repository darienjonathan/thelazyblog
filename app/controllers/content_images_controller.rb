class ContentImagesController < InheritedResources::Base

  private

    def content_image_params
      params.require(:content_image).permit(:url, :blog_id)
    end
end

