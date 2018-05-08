class Blog < ApplicationRecord
  has_many :comments
  has_many :content_images
  has_many :header_images
  accepts_nested_attributes_for :header_images, allow_destroy: true
  accepts_nested_attributes_for :content_images, allow_destroy: true
  serialize :lang, Array

  LANG_ARRAY = ["en", "id", "jp"]

  validate :lang_valid?
  validates :permalink, format: {
                          with: /\A[a-z0-9\._-]*\z/i,
                          message: "は半角英字、数字、ハイフンまたはアンダースコアで記入して下さい"
                        },
                        presence: {
                          message: "を記入してください"
                        },
                        uniqueness: true

  before_validation :lang_array_omit_empty

  def lang_valid?
    unless lang.empty?
      errors.add(:'language', ': the allowed language code is only "en", "id", and/or "jp"') unless lang.select{|a| LANG_ARRAY.include? a} == lang
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

  #activeadmin
  def blog_comments
    comments
  end

end