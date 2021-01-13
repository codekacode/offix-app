class AddPositionToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :position, :string
  end
end
