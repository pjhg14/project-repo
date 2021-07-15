class ProjectSerializer < ActiveModel::Serializer
    attributes :id, :title, :short_desc, :description, :repo_url, :demo_url, :url
end
