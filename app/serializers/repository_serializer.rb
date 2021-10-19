class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :host, :type, :link
  attribute :project_id, if: solo_query?

  def solo_query?
    !object.association(:project).loaded?
  end
end
