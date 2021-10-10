class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :host, :type, :link
end
