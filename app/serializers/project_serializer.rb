class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_desc, :long_desc, :completion_date, :video_url, :live_url, :complexity, :image_url

  has_and_belongs_to_many :technologies
  has_many :repositories
  has_many :requirements

end
