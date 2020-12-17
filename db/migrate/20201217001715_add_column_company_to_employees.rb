class AddColumnCompanyToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :company, :string
  end
end
