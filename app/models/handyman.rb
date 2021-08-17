class Handyman < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
	has_many :missions
	has_many :quotation
  belongs_to :user
  validates :job_title, presence: :true
  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_job_title,
    against: [ :first_name, :job_title ],
    using: {
      tsearch: { prefix: true }
    }
end

