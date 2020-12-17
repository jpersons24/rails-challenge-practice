class RemoveCompanyColumnFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :company, :string
    add_column :employees, :company_id, :integer
  end
end
