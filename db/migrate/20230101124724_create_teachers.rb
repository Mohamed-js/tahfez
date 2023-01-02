class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.text :about
      t.text :zoom_link

      t.timestamps
    end
  end
end
