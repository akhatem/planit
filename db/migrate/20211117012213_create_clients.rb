class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name_en
      t.string :name_ar
      t.string :description_en
      t.string :description_ar
      t.string :attachment

      t.timestamps
    end
  end
end
