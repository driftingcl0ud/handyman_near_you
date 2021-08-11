class Quotation < ApplicationRecord
  belongs_to :mission
  belongs_to :handyman
  validates :specifi_price, presence: :true
  validates :handyman_description, presence: true
  validates :status, presence: :true, default: false
end
