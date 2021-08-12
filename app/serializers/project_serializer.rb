class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :short_desc, :long_desc, :repo_url, :video_url, :live_url
end
