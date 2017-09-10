class Content < ApplicationRecord
  mount_uploader :image, ContentUploader # Tells rails to use this uploader for this model.
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true
end
