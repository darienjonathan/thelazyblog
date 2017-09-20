class Blog < ApplicationRecord
  has_many :comments
  has_many :content_images
  has_many :header_images
  serialize :lang, Array

  LANG_ARRAY = ["en", "id", "jp"]

  validate :lang_valid?

  before_validation :lang_array_omit_empty

  def lang_valid?
    unless lang.empty?
      errors.add(:field, 'The allowed language code is only "en", "id", or "jp"') unless lang.select{|a| LANG_ARRAY.include? a} == lang
    end
  end

  def lang_array_omit_empty
    self.lang.reject!{ |l| l.empty? }
  end

  def meta_tag
    header_image = self.header_images.first
    meta_tag = {
      title: self.title,
      description: self.summary.gsub(/<br>/,"").gsub(/\s{2,}/," ")
    }
    if header_image.nil?
      meta_tag[:og_title] = self.title
    else
      meta_tag[:og_title] = header_image.caption.gsub(/<br>/," ")
      meta_tag[:image] = InheritedResources::Base.helpers.asset_path(header_image.url)
    end
    meta_tag
  end

  def css_file_name
    title.parameterize.underscore
  end

  def css_path
     Rails.root.join(DEFAULT_CSS_PATH,"#{css_file_name}.scss")
  end

end