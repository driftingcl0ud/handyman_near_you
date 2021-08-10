class Handyman < ApplicationRecord
	has_many :missions
	has_many :quotation
  belongs_to :user
  validates :job_title, presence: :true
  validates :average_price, presence: :true
end
