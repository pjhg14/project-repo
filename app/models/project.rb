class Project < ApplicationRecord

  has_many :technologies, through: :utilizations
  has_many :repositories
  has_many :requirements

  validates :title, presence: true, uniqueness: true

end
