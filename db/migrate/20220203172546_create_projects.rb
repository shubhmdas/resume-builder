class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true
      t.string :title
      t.string :project_url
      t.string :tech_stack
      t.text :description

      t.timestamps
    end
  end
end
