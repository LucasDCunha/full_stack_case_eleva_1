class School < ApplicationRecord
  has_many :groups, dependent: :destroy
end
