class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :project_id, :host, :type, :link
end
