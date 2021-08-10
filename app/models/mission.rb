class Mission < ApplicationRecord
  belongs_to :handyman_id
  belongs_to :user_id
end
