class Property < ApplicationRecord
  belongs_to :account
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :address, presence: true, length: {minimum: 3, maximum: 100}
  validates :account_id, presence: true
end
