class Mission < ApplicationRecord
  belongs_to :handyman
  belongs_to :user
  has_many :quotations

  validates :description, presence: true
  validates :date, presence: true

end
