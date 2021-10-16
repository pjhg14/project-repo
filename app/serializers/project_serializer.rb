class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_desc, :long_desc, :completion_date, :video_url, :live_url, :complexity, :image

  has_many :technologies, through: :utilizations
  has_many :repositories
  has_many :requirements

end
