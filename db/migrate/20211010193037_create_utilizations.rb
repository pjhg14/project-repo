class CreateUtilizations < ActiveRecord::Migration[6.1]
  def change
    create_table :utilizations do |t|
      t.integer :project_id
      t.integer :technology_id

      t.timestamps
    end
  end
end
