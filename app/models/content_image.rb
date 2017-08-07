class ContentImage < ApplicationRecord
  belongs_to :blog
  mount_uploader :url, ContentImageUploader
end
