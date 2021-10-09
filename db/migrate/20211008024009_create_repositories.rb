class CreateRepositories < ActiveRecord::Migration[6.1]
  def change
    create_table :repositories do |t|
      t.integer :project_id
      t.string :host
      t.string :type
      t.string :link

      t.timestamps
    end
  end
end
