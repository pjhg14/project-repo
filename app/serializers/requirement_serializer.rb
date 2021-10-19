class RequirementSerializer < ActiveModel::Serializer
  attributes :id, :req
  attribute :project_id, if: solo_query?

  def solo_query?
    !object.association(:project).loaded?
  end
end
