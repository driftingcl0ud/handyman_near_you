class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :missions
  has_many :quotations, through: :missions
  has_many :handymen

  validates :first_name,presence: :true
  validates :last_name, presence: :true
  validates :address, presence: :true
  has_one_attached :photo
end
