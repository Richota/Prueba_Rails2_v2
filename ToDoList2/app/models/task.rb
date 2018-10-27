class Task < ApplicationRecord
  has_many :readies
  has_many :users, through: :readies
end
