class Movie < ActiveRecord::Base
  belongs_to :user
  has_one :gallery, dependent: :destroy

  accepts_nested_attributes_for :gallery
end
