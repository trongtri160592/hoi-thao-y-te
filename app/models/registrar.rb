class Registrar < ApplicationRecord
  mount_uploader :image, ContentUploader # Tells rails to use this uploader for this model.
  mount_uploader :cvs, CVUploader # Tells rails to use this uploader for this model.
end
