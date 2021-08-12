class Handyman < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
	has_many :missions
	has_many :quotation
  belongs_to :user
  validates :job_title, presence: :true
  validates :average_price, presence: :true
  
end

