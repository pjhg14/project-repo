class CreateProjects < ActiveRecord::Migration[6.1]
    def change
        create_table :projects do |t|
        t.string :title
        t.string :short_desc
        t.string :description
        t.string :repo_url
        t.string :demo_url
        t.string :url

        t.timestamps
        end
    end
end
