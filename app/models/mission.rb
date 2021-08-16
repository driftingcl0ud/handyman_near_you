class Mission < ApplicationRecord
  belongs_to :user
  has_many :quotations
  has_many_attached :photos

  validates :description, presence: true
  validates :start_date, presence: true


end
