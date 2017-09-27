class Content < ApplicationRecord
  mount_uploader :image, ContentUploader # Tells rails to use this uploader for this model.
  validates :title, presence: true
  validates :english_title, presence: true
  validates :image, presence: true

  has_many :sub_contents
end
