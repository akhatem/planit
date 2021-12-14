class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name_en
      t.string :name_ar
      t.text :description_en
      t.text :description_ar
      t.string :attachment

      t.timestamps
    end
  end
end
