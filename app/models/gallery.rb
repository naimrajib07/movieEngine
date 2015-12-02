class Gallery < ActiveRecord::Base
  belongs_to :movie
  has_many :pictures, dependent: :destroy

  accepts_nested_attributes_for :pictures, allow_destroy: true

  delegate :avatar, to: :pictures, allow_nil: true
end
