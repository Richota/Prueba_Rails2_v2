class Ready < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates :task, uniqueness: { scope: :user }
end
