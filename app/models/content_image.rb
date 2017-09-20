class ContentImage < ApplicationRecord
  belongs_to :blog
  mount_uploader :url, ContentImageUploader

  IMG_CLASS_ARRAY = ["normal-img", "small-img"]

  def class_valid?
    errors.add(:field, 'The allowed class is only "normal-img" or "small-img"') unless IMG_CLASS_ARRAY.include? class_attr
  end

end
