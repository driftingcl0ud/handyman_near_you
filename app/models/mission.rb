class Mission < ApplicationRecord
  belongs_to :user
  has_many :quotations

  validates :description, presence: true
  validates :start_date, presence: true

end
