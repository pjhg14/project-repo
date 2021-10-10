class Technology < ApplicationRecord
  has_many :projects, through: :utilizations

  validates :name, presence: true, uniqueness: true
end
