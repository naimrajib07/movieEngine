class Picture < ActiveRecord::Base
  belongs_to :gallery
  has_one :movie, through: :gallery

  has_attached_file :avatar, styles: {medium: '300x300>', thumb: '100x100>'}, default_url: 'defualt.jpg'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 1024.kilobytes

  delegate :name, to: :movie, allow_nil: true, prefix: true
end
