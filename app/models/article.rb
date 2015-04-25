class Article < ActiveRecord::Base
  validates :title, presence: true

  has_many :comments, dependent: :destroy

  scope :order_by_updated_at, ->{ order('updated_at desc') }
end