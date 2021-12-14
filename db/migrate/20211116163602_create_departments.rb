class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name_en
      t.string :name_ar
      t.text :description_en
      t.text :description_ar
      t.string :image

      t.timestamps
    end
  end
end
