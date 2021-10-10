class Utilization < ApplicationRecord
  validates :project_id, presence: true
  validates :technmology_id, presence: true
end
