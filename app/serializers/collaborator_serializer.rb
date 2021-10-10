class CollaboratorSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :type, :name, :site
end
