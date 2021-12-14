class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :name_en
      t.string :name_ar
      t.string :description_en
      t.string :description_ar
      t.string :key

      t.timestamps
    end
    add_index :settings, :key, unique: true
  end
end
