class HeaderImage < ApplicationRecord
  belongs_to :blog
  mount_uploader :url, HeaderImageUploader
end
