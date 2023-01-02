class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :content_type
      t.string :content_name
      t.string :from
      t.string :to
      t.integer :material_id

      t.timestamps
    end
  end
end
