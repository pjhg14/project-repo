class CreateCollaborators < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborators do |t|
      t.integer :project_id
      t.string :type
      t.string :name
      t.string :site

      t.timestamps
    end
  end
end
