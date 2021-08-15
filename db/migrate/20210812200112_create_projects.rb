class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_desc
      t.string :long_desc
      t.string :repo_url
      t.string :video_url
      t.string :live_url
      t.integer :priority

      t.timestamps
    end
  end
end
