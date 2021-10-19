class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name
  attribute :project_id, if: solo_query?

  def solo_query?
    !object.association(:project).loaded?
  end
  
end
