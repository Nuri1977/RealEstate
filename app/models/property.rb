class Property < ApplicationRecord
  belongs_to :account
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :address, presence: true, length: {minimum: 3, maximum: 100}
  validates :account_id, presence: true

  scope :latest, -> { order created_at: :desc }

  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :leased, -> { where(for_sale: false, status: "leased") }
  scope :for_rent, -> { where(for_sale: false, status: "available") }

end
