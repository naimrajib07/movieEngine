class Movie < ActiveRecord::Base
  paginates_per 25
  belongs_to :user
  has_one :gallery, dependent: :destroy

  validates_presence_of :name, :director, :genre
  validates_uniqueness_of :name

  accepts_nested_attributes_for :gallery

  delegate :email, to: :user, prefix: true, allow_nil: true
end
