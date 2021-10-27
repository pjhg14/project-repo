class Utilization < ApplicationRecord
  belongs_to :project
  belongs_to :technology
  
  validates :project_id, :technology_id, presence: true
  valudates :project_id, uniqueness: {scope: technology_id}



end
