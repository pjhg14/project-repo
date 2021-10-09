class CreateRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :requirements do |t|
      t.integer :project_id
      t.text :req

      t.timestamps
    end
  end
end
