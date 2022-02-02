class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :company
      t.string :position
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end
end
