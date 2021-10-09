class CreateProjectTechnologyJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :projects, :technologies
  end
end
