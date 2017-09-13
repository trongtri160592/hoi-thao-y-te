class Sponsor < ApplicationRecord
  mount_uploader :logo, ContentUploader # Tells rails to use this uploader for this model.
end
