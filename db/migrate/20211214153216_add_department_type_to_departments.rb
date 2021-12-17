class AddDepartmentTypeToDepartments < ActiveRecord::Migration[6.1]
  def change
    add_column :departments, :department_type, :string
  end
end
