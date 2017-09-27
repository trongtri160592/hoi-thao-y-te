class SubContent < ApplicationRecord
  belongs_to :parent, class_name: :Content, foreign_key: "content_id"
  validates :title, presence: true
  validates :english_title, presence: true
end
