class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def meta_tag content
    meta_tags = 
    {
      title: content[:title],
      og: {
        url: request.original_url,
        type: "website",
        title: content[:og_title],
        description: content[:description]
      }
    }
    meta_tags[:og][:image] = content[:image] if !content[:image].nil?
    meta_tags
  end

end
