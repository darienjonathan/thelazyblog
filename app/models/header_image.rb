class HeaderImage < ApplicationRecord
  belongs_to :blog
  mount_uploader :url, HeaderImageUploader

  validate :title_existence
  validate :bg_pos_syntax_validation

  def title_existence
    return unless title
    validation = HeaderImage.where(title: true, blog_id: blog_id)
    validation = new_record? ? validation : validation.where.not(id: id)
    errors.add(:title, 'you can only have one title header per blog') if validation.present?
  end

  def bg_pos_syntax_validation
    css_regex = /^(((0|left|right|center|-?\d+(px|%))\s(0|top|center|bottom|-?\d+(px|%)))|inherit|initial)$/
    errors.add(:bg_pos_pc, 'invalid background-position syntax') if bg_pos_pc.match(css_regex).nil?
    errors.add(:bg_pos_sp, 'invalid background-position syntax') if bg_pos_sp.match(css_regex).nil?
  end

end